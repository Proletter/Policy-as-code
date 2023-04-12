#This policy will find SQL servers and make sure they have a managed identity enabled. (Required for pushing Vuln Assessments to private Storage Accounts)
resource "azurerm_policy_definition" "sql-server-deploy-managed-identity" {
  name                = "sql-server-managed-identity"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "SQL Server managed identity enablement"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "SQL"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
        "if": {
          "allOf": [
            {
              "field": "type",
              "equals": "Microsoft.Sql/servers"
            }
          ]
        },
        "then": {
          "effect": "[parameters('effect')]",
          "details": {
            "type": "Microsoft.Sql/servers",
            "existenceCondition": {
              "field": "identity.type",
              "equals": "SystemAssigned"
            },
            "roleDefinitionIds": [
              "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
            ],
            "deployment": {
              "properties": {
                "mode": "incremental",
                "parameters": {
                  "SQLServerName": {
                    "value": "[field('name')]"
                  },
                  "location": {
                    "value": "[field('location')]"
                  }
                },
                "template": {
                  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                  "contentVersion": "1.0.0.0",
                  "parameters": {
                    "SQLServerName": {
                      "type": "string"
                    },
                    "location": {
                      "type": "string"
                    }
                  },
                  "resources": [
                    {
                      "type": "Microsoft.Sql/servers",
                      "apiVersion": "2021-11-01",
                      "name": "[parameters('SQLServerName')]",
                      "location": "[parameters('location')]",
                      "identity": {
                        "type": "SystemAssigned"
                      }
                    }
                  ]
                }
              }
            }
          }
        }
      }
POLICY_RULE

  parameters = <<PARAMETERS
{
        "effect": {
          "type": "String",
          "metadata": {
            "displayName": "Effect",
            "description": "Enable or disable the execution of the policy"
          },
          "allowedValues": [
            "DeployIfNotExists",
            "Disabled"
          ],
          "defaultValue": "DeployIfNotExists"
        }
      }
PARAMETERS
}

#This policy will be created for each location designated in the TFCloud workspace that creates central Storage Accounts to store SQL Vuln Assessments.
resource "azurerm_policy_definition" "sql-server-vuln-assessment" {
  for_each = data.terraform_remote_state.ie-vuln-assessments.outputs.storage_regions

  name                = "sql-server-vuln-assessment-regional-${each.value.shortname}"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${each.value.azurename} SQL Server vulnerability assessment to regional storage account and enable email"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "SQL"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
        "if": {
            "allOf":[
                {
                    "field": "type",
                    "equals": "Microsoft.Sql/servers"
                },
                {
                    "field": "location",
                    "equals": "[parameters('location')]"
                }
            ]
        },
        "then": {
            "effect": "[parameters('effect')]",
            "details": {
                "type": "Microsoft.Sql/servers/vulnerabilityAssessments",
                "existenceCondition": {
                    "allOf": [
                        {
                            "field": "Microsoft.Sql/servers/vulnerabilityAssessments/recurringScans.emails[*]",
                            "equals": "[parameters('vulnerabilityAssessmentsEmail')]"
                        },
                        {
                            "field": "Microsoft.Sql/servers/vulnerabilityAssessments/recurringScans.isEnabled",
                            "equals": true
                        }
                    ]
                },
                "deployment": {
                    "properties": {
                        "mode": "Incremental",
                        "template": {
                            "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
                            "contentVersion": "1.0.0.0",
                            "parameters": {
                                "location": {
                                    "type": "String"
                                },
                                "sqlServerName": {
                                    "type": "String"
                                },
                                "sqlServerDataBaseName": {
                                    "type": "String"
                                },
                                "vulnerabilityAssessmentsEmail": {
                                    "type": "String"
                                },
                                "vulnerabilityAssessmentsStorageID": {
                                    "type": "String"
                                }
                            },
                            "variables": {},
                            "resources": [
                                {
                                    "name": "[concat(parameters('sqlServerName'),'/default')]",
                                    "type": "Microsoft.Sql/servers/vulnerabilityAssessments",
                                    "apiVersion": "2018-06-01-preview",
                                    "properties": {
                                        "storageContainerPath": "[concat('https://', last( split(parameters('vulnerabilityAssessmentsStorageID') ,  '/') ) , '.blob.core.windows.net/vulneraabilitylogs')]",
                                        "recurringScans": {
                                            "isEnabled": true,
                                            "emailSubscriptionAdmins": false,
                                            "emails": [
                                                "[parameters('vulnerabilityAssessmentsEmail')]"
                                            ]
                                        }
                                    }
                                }
                            ],
                            "outputs": {}
                        },
                        "parameters": {
                            "location": {
                                "value": "[field('location')]"
                            },
                            "sqlServerName": {
                                "value": "[first(split(field('fullname'),'/'))]"
                            },
                            "sqlServerDataBaseName": {
                                "value": "[field('name')]"
                            },
                            "vulnerabilityAssessmentsEmail": {
                                "value": "[parameters('vulnerabilityAssessmentsEmail')]"
                            },
                            "vulnerabilityAssessmentsStorageID": {
                                "value": "[parameters('vulnerabilityAssessmentsStorageID')]"
                            }
                        }
                    }
                },
                "roleDefinitionIds": [
                    "/providers/Microsoft.Authorization/roleDefinitions/056cd41c-7e88-42e1-933e-88ba6a50c9c3",
                    "/providers/Microsoft.Authorization/roleDefinitions/749f88d5-cbae-40b8-bcfc-e573ddc772fa",
                    "/providers/Microsoft.Authorization/roleDefinitions/17d1049b-9a84-46fb-8f53-869881c3d3ab"
                  ]
            }
        }
    }
POLICY_RULE

  parameters = <<PARAMETERS
{
        "vulnerabilityAssessmentsEmail": {
            "type": "String",
            "defaultValue": "ie@anfcorp.com",
            "metadata": {
                "description": "The email address to send alerts",
                "displayName": "The email address to send alerts"
            }
        },
        "vulnerabilityAssessmentsStorageID": {
            "type": "String",
            "defaultValue": "${each.value.sa_id}",
            "metadata": {
                "description": "The storage account ID to store assessments",
                "displayName": "The storage account ID to store assessments"
            }         
        },
        "location": {
            "type": "String",
            "defaultValue": "${each.key}",
            "metadata": {
                "description": "The storage account ID to store assessments",
                "displayName": "The storage account ID to store assessments"
            }
        },
        "effect": {
            "type": "String",
            "defaultValue": "DeployIfNotExists",
            "allowedValues": [
                "DeployIfNotExists",
                "Disabled"
            ],
            "metadata": {
                "displayName": "Effect",
                "description": "Enable or disable the execution of the policy"
            }
        }
    }
PARAMETERS
}