#####################################
############# Event Hub #############
#####################################

resource "azurerm_policy_definition" "az-acr-diag-eh" {
  for_each = var.eventhub_regions

  name                = "az-acr-diag-eh${each.value.context1}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az acr to Event Hub${each.value.context2}"
  description         = "Deploys Az acr Event Hub diagnostics Settings"
  management_group_id = var.mgmt-grp-def

  metadata    = <<METADATA
    {
    "category": "${var.policy_definition_category}",
    "version" : "1.0.0"
    }
METADATA
  policy_rule = <<POLICY_RULE
 {
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "Microsoft.ContainerRegistry/registries"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            }
        ]
    },
    "then": {
        "effect": "deployIfNotExists",
        "details": {
            "type": "Microsoft.Insights/diagnosticSettings",
            "existenceCondition": {
                "allOf": [
                    {
                        "field": "Microsoft.Insights/diagnosticSettings/logs.enabled",
                        "equals": "[parameters('logsEnabled')]"
                    },
                    {
                        "field": "Microsoft.Insights/diagnosticSettings/metrics.enabled",
                        "equals": "[parameters('metricsEnabled')]"
                    },
                    {
                        "field": "Microsoft.Insights/diagnosticSettings/eventHubName",
                        "equals": "[last(split(parameters('eventHubName'), '/'))]"
                    }
                ]
            },
            "roleDefinitionIds": [
                "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
            ],
            "deployment": {
                "properties": {
                    "mode": "incremental",
                    "template": {
                        "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
                        "contentVersion": "1.0.0.0",
                        "parameters": {
                            "name": {
                                "type": "string"
                            },
                            "location": {
                                "type": "string"
                            },
                            "eventHubName": {
                                "type": "string"
                            },
                            "eventHubRuleId": {
                                "type": "string"
                            },
                            "metricsEnabled": {
                                "type": "string"
                            },
                            "logsEnabled": {
                                "type": "string"
                            },
                            "profileName": {
                                "type": "string"
                            }
                        },
                        "variables": {},
                        "resources": [
                            {
                                "type": "Microsoft.ContainerRegistry/registries/providers/diagnosticSettings",
                                "apiVersion": "2021-05-01-preview",
                                "name": "[concat(parameters('name'), '/', 'Microsoft.Insights/', parameters('profileName'))]",
                                "location": "[parameters('location')]",
                                "properties": {
                                    "eventHubName": "[last(split(parameters('eventHubName'), '/'))]",
                                    "eventHubAuthorizationRuleId": "[parameters('eventHubRuleId')]",
                                    "metrics": [
                                        {
                                            "category": "AllMetrics",
                                            "enabled": "[parameters('metricsEnabled')]",
                                            "retentionPolicy": {
                                                "enabled": false,
                                                "days": 0
                                            }
                                        }
                                    ],
                                    "logs": [
                                        {
                                            "category": "ContainerRegistryRepositoryEvents",
                                            "enabled": "[parameters('logsEnabled')]"
                                        },
                                        {
                                            "category": "ContainerRegistryLoginEvents",
                                            "enabled": "[parameters('logsEnabled')]"
                                        }
                                    ]
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('eventHubName'), 'configured for diagnostic logs for ', ': ', parameters('name'))]"
                            }
                        }
                    },
                    "parameters": {
                        "eventHubName": {
                            "value": "[parameters('eventHubName')]"
                        },
                        "location": {
                            "value": "[field('location')]"
                        },
                        "name": {
                            "value": "[field('name')]"
                        },
                        "eventHubRuleId": {
                            "value": "[parameters('eventHubRuleId')]"
                        },
                        "metricsEnabled": {
                            "value": "[parameters('metricsEnabled')]"
                        },
                        "logsEnabled": {
                            "value": "[parameters('logsEnabled')]"
                        },
                        "profileName": {
                            "value": "[parameters('profileName')]"
                        }
                    }
                }
            }
        }
    }
}
POLICY_RULE

  parameters = <<PARAMETERS
{
    "profileName": {
        "type": "String",
        "metadata": {
            "displayName": "Profile Name for Config",
            "description": "The profile name Azure Diagnostics"
        },
        "defaultValue": "Diag-ACR-eh"
    },
    "eventHubName": {
        "type": "String",
        "metadata": {
            "displayName": "EventHub Name",
            "description": "The event hub for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/EventHubs",
            "assignPermissions": true
        },
        "defaultValue": "${each.value.eh_name}"
    },
    "eventHubRuleId": {
        "type": "String",
        "metadata": {
            "displayName": "EventHubRuleID",
            "description": "The event hub RuleID for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/AuthorizationRules",
            "assignPermissions": true
        },
        "defaultValue": "${each.value.eh_id}"
    },
    "azureRegions": {
        "type": "Array",
        "metadata": {
            "displayName": "Allowed Locations",
            "description": "The list of locations that can be specified when deploying resources",
            "strongType": "location"
        },
        "defaultValue": ["${each.value.region}"]
    },
    "metricsEnabled": {
        "type": "String",
        "metadata": {
            "displayName": "Enable Metrics",
            "description": "Enable Metrics - True or False"
        },
        "allowedValues": [
            "True",
            "False"
        ],
        "defaultValue": "True"
    },
    "logsEnabled": {
        "type": "String",
        "metadata": {
            "displayName": "Enable Logs",
            "description": "Enable Logs - True or False"
        },
        "allowedValues": [
            "True",
            "False"
        ],
        "defaultValue": "True"
    }
}
PARAMETERS
}

resource "azurerm_policy_definition" "az-acr-diag-law" {
  name                = "az-acr-diag-law"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az acr to Log Analytics Workspace"
  description         = "Az acr to Log Analytics Workspace"
  management_group_id = var.mgmt-grp-def
  metadata            = <<METADATA
    {
    "category": "${var.policy_definition_category}",
    "version" : "1.0.0"
    }
METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "Microsoft.ContainerRegistry/registries"
            },
            {
                "field": "location",
                "in": "[parameters('AzureRegions')]"
            }
        ]
    },
    "then": {
        "effect": "deployIfNotExists",
        "details": {
            "type": "Microsoft.Insights/diagnosticSettings",
            "existenceCondition": {
                "allOf": [
                    {
                        "field": "Microsoft.Insights/diagnosticSettings/logs.enabled",
                        "equals": "[parameters('LogsEnabled')]"
                    },
                    {
                        "field": "Microsoft.Insights/diagnosticSettings/metrics.enabled",
                        "equals": "[parameters('MetricsEnabled')]"
                    },
                    {
                        "field": "Microsoft.Insights/diagnosticSettings/workspaceId",
                        "equals": "[parameters('logAnalytics')]"
                    }
                ]
            },
            "roleDefinitionIds": [
                "/providers/Microsoft.Authorization/roleDefinitions/92aaf0da-9dab-42b6-94a3-d43ce8d16293"
            ],
            "deployment": {
                "properties": {
                    "mode": "incremental",
                    "template": {
                        "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
                        "contentVersion": "1.0.0.0",
                        "parameters": {
                            "name": {
                                "type": "string"
                            },
                            "location": {
                                "type": "string"
                            },
                            "logAnalytics": {
                                "type": "string"
                            },
                            "metricsEnabled": {
                                "type": "string"
                            },
                            "logsEnabled": {
                                "type": "string"
                            },
                            "profileName": {
                                "type": "string"
                            }
                        },
                        "variables": {},
                        "resources": [
                            {
                                "type": "Microsoft.ContainerRegistry/registries/providers/diagnosticSettings",
                                "apiVersion": "2021-05-01-preview",
                                "name": "[concat(parameters('name'), '/', 'Microsoft.Insights/', parameters('profileName'))]",
                                "location": "[parameters('location')]",
                                "properties": {
                                    "workspaceId": "[parameters('logAnalytics')]",
                                    "metrics": [
                                        {
                                            "category": "AllMetrics",
                                            "enabled": "[parameters('metricsEnabled')]",
                                            "retentionPolicy": {
                                                "enabled": false,
                                                "days": 0
                                            }
                                        }
                                    ],
                                    "logs": [
                                        {
                                            "category": "ContainerRegistryRepositoryEvents",
                                            "enabled": "[parameters('logsEnabled')]"
                                        },
                                        {
                                            "category": "ContainerRegistryLoginEvents",
                                            "enabled": "[parameters('logsEnabled')]"
                                        }
                                    ]
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('logAnalytics'), 'configured for diagnostic logs for ', ': ', parameters('name'))]"
                            }
                        }
                    },
                    "parameters": {
                        "logAnalytics": {
                            "value": "[parameters('logAnalytics')]"
                        },
                        "location": {
                            "value": "[field('location')]"
                        },
                        "name": {
                            "value": "[field('name')]"
                        },
                        "metricsEnabled": {
                            "value": "[parameters('metricsEnabled')]"
                        },
                        "logsEnabled": {
                            "value": "[parameters('logsEnabled')]"
                        },
                        "profileName": {
                            "value": "[parameters('profileName')]"
                        }
                    }
                }
            }
        }
    }
}
POLICY_RULE

  parameters = <<PARAMETERS
{
    "profileName": {
        "type": "String",
        "metadata": {
            "displayName": "Profile Name for Config",
            "description": "The profile name Azure Diagnostics"
        },
        "defaultValue": "diag-acr-LA"
    },
    "logAnalytics": {
        "type": "string",
        "metadata": {
            "displayName": "logAnalytics",
            "description": "The target Log Analytics Workspace for Azure Diagnostics",
            "strongType": "omsWorkspace"
        },
        "defaultValue": "${var.law_regions.eus2.law_id}"
    },
    "azureRegions": {
        "type": "Array",
        "metadata": {
            "displayName": "Allowed Locations",
            "description": "The list of locations that can be specified when deploying resources",
            "strongType": "location"
        },
        "defaultValue": ["East US 2", "Central US","North Europe","West Europe"]
    },
    "metricsEnabled": {
        "type": "String",
        "metadata": {
            "displayName": "Enable Metrics",
            "description": "Enable Metrics - True or False"
        },
        "allowedValues": [
            "True",
            "False"
        ],
        "defaultValue": "True"
    },
    "logsEnabled": {
        "type": "String",
        "metadata": {
            "displayName": "Enable Logs",
            "description": "Enable Logs - True or False"
        },
        "allowedValues": [
            "True",
            "False"
        ],
        "defaultValue": "True"
    }
}
PARAMETERS
}
