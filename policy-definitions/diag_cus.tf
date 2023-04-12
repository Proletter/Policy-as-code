resource "azurerm_policy_definition" "diag-eh-cus" {
  for_each = { for diag in var.diag : diag.name => diag}

  name                = "${each.value.name}-cus"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${each.value.name} to Event Hub"
  description         = "Deploys ${each.value.name} Event Hub Diagnostics Settings"
  management_group_id = var.mgmt-grp-def 

  metadata    = <<METADATA
    {
    "category": "${var.policy_definition_category}",
    "version" : "1.0.0"
    }
METADATA
  policy_rule = contains(var.diag_logs_only, each.value.name) ? (<<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "${each.value.type}"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
            {
                "field": "[concat('tags[', parameters('isDataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('isDataBricksResourceTagValue')]" 
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
                                "type": "${each.value.type}/providers/diagnosticSettings",
                                "apiVersion": "2021-05-01-preview",
                                "name": "[concat(parameters('name'), '/', 'Microsoft.Insights/', parameters('profileName'))]",
                                "location": "[parameters('location')]",
                                "properties": {
                                    "eventHubName": "[last(split(parameters('eventHubName'), '/'))]",
                                    "eventHubAuthorizationRuleId": "[parameters('eventHubRuleId')]",
                                    "logs": [
                                        {
                                            "categoryGroup": "allLogs",
                                            "enabled": "[parameters('logsEnabled')]"
                                        }
                                    ]
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('eventHubName'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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
  ) : <<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "${each.value.type}"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
            {
                "field": "[concat('tags[', parameters('isDataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('isDataBricksResourceTagValue')]" 
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
                                "type": "${each.value.type}/providers/diagnosticSettings",
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
                                            "categoryGroup": "allLogs",
                                            "enabled": "[parameters('logsEnabled')]"
                                        }
                                    ]
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('eventHubName'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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

  parameters = contains(var.diag_logs_only, each.value.name) ? (<<PARAMETERS
{    "isDataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "isDataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Value",
          "description": "The Tag value of the databricks related resource to exclude (i.e. true etc.)"
        },
        "defaultValue": "true"
      },
     "tagName": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Name",
          "description": "The Tag name to exclude (i.e. Vendor etc.)"
        },
        "defaultValue": "Vendor"
      },
      "tagValue": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Value",
          "description": "Value of the tag to name to exclude (i.e. Databricks etc.)"
        },
        "defaultValue": "Databricks"
      },
    "profileName": {
        "type": "String",
        "metadata": {
            "displayName": "Profile Name for Config",
            "description": "The profile name Azure Diagnostics"
        },
        "defaultValue": "Diag-${each.value.profile}-eh"
    },
    "eventHubName": {
        "type": "String",
        "metadata": {
            "displayName": "EventHub Name",
            "description": "The event hub for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/EventHubs",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_name}"
    },
    "eventHubRuleId": {
        "type": "String",
        "metadata": {
            "displayName": "EventHubRuleID",
            "description": "The event hub RuleID for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/AuthorizationRules",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_id}"
    },
    "azureRegions": {
        "type": "Array",
        "metadata": {
            "displayName": "Allowed Locations",
            "description": "The list of locations that can be specified when deploying resources",
            "strongType": "location"
        },
        "defaultValue": ["Central US"]
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
  ) : <<PARAMETERS
{    "isDataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "isDataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Value",
          "description": "The Tag value of the databricks related resource to exclude (i.e. true etc.)"
        },
        "defaultValue": "true"
      },
     "tagName": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Name",
          "description": "The Tag name to exclude (i.e. Vendor etc.)"
        },
        "defaultValue": "Vendor"
      },
      "tagValue": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Value",
          "description": "Value of the tag to name to exclude (i.e. Databricks etc.)"
        },
        "defaultValue": "Databricks"
      },
    "profileName": {
        "type": "String",
        "metadata": {
            "displayName": "Profile Name for Config",
            "description": "The profile name Azure Diagnostics"
        },
        "defaultValue": "Diag-${each.value.profile}-eh"
    },
    "eventHubName": {
        "type": "String",
        "metadata": {
            "displayName": "EventHub Name",
            "description": "The event hub for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/EventHubs",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_name}"
    },
    "eventHubRuleId": {
        "type": "String",
        "metadata": {
            "displayName": "EventHubRuleID",
            "description": "The event hub RuleID for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/AuthorizationRules",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_id}"
    },
    "azureRegions": {
        "type": "Array",
        "metadata": {
            "displayName": "Allowed Locations",
            "description": "The list of locations that can be specified when deploying resources",
            "strongType": "location"
        },
        "defaultValue": ["Central US"]
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



##########################################################################################################################################################
########################     ALL METRICS ONLY  , REMOVING ALL LOGS CATEGORY   ############################################################################
##########################################################################################################################################################


resource "azurerm_policy_definition" "diag-eh-cus-allmetrics" {
  for_each = { for diag in var.diag_all_metrics_only : diag.name => diag}

  name                = "${each.value.name}-cus-allmetrics"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${each.value.name} to Event Hub all metrics"
  description         = "Deploys ${each.value.name} Event Hub Diagnostics Settings all metrics"
  management_group_id = var.mgmt-grp-def 

  metadata    = <<METADATA
    {
    "category": "${var.policy_definition_category}",
    "version" : "1.0.0"
    }
METADATA
  policy_rule = contains(var.diag_logs_only, each.value.name) ? (<<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "${each.value.type}"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
            {
                "field": "[concat('tags[', parameters('isDataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('isDataBricksResourceTagValue')]" 
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
                            "profileName": {
                                "type": "string"
                            }
                        },
                        "variables": {},
                        "resources": [
                            {
                                "type": "${each.value.type}/providers/diagnosticSettings",
                                "apiVersion": "2021-05-01-preview",
                                "name": "[concat(parameters('name'), '/', 'Microsoft.Insights/', parameters('profileName'))]",
                                "location": "[parameters('location')]",
                                "properties": {
                                    "eventHubName": "[last(split(parameters('eventHubName'), '/'))]",
                                    "eventHubAuthorizationRuleId": "[parameters('eventHubRuleId')]",
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('eventHubName'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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
  ) : <<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "${each.value.type}"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
            {
                "field": "[concat('tags[', parameters('isDataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('isDataBricksResourceTagValue')]" 
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
                            "profileName": {
                                "type": "string"
                            }
                        },
                        "variables": {},
                        "resources": [
                            {
                                "type": "${each.value.type}/providers/diagnosticSettings",
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
                                    ]
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('eventHubName'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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

  parameters = contains(var.diag_logs_only, each.value.name) ? (<<PARAMETERS
{    "isDataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "isDataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Value",
          "description": "The Tag value of the databricks related resource to exclude (i.e. true etc.)"
        },
        "defaultValue": "true"
      },
     "tagName": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Name",
          "description": "The Tag name to exclude (i.e. Vendor etc.)"
        },
        "defaultValue": "Vendor"
      },
      "tagValue": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Value",
          "description": "Value of the tag to name to exclude (i.e. Databricks etc.)"
        },
        "defaultValue": "Databricks"
      },
    "profileName": {
        "type": "String",
        "metadata": {
            "displayName": "Profile Name for Config",
            "description": "The profile name Azure Diagnostics"
        },
        "defaultValue": "Diag-${each.value.profile}-eh"
    },
    "eventHubName": {
        "type": "String",
        "metadata": {
            "displayName": "EventHub Name",
            "description": "The event hub for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/EventHubs",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_name}"
    },
    "eventHubRuleId": {
        "type": "String",
        "metadata": {
            "displayName": "EventHubRuleID",
            "description": "The event hub RuleID for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/AuthorizationRules",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_id}"
    },
    "azureRegions": {
        "type": "Array",
        "metadata": {
            "displayName": "Allowed Locations",
            "description": "The list of locations that can be specified when deploying resources",
            "strongType": "location"
        },
        "defaultValue": ["Central US"]
    }
}
PARAMETERS
  ) : <<PARAMETERS
{    "isDataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "isDataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "isDataBricksResource Tag Value",
          "description": "The Tag value of the databricks related resource to exclude (i.e. true etc.)"
        },
        "defaultValue": "true"
      },
     "tagName": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Name",
          "description": "The Tag name to exclude (i.e. Vendor etc.)"
        },
        "defaultValue": "Vendor"
      },
      "tagValue": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Value",
          "description": "Value of the tag to name to exclude (i.e. Databricks etc.)"
        },
        "defaultValue": "Databricks"
      },
    "profileName": {
        "type": "String",
        "metadata": {
            "displayName": "Profile Name for Config",
            "description": "The profile name Azure Diagnostics"
        },
        "defaultValue": "Diag-${each.value.profile}-eh"
    },
    "eventHubName": {
        "type": "String",
        "metadata": {
            "displayName": "EventHub Name",
            "description": "The event hub for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/EventHubs",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_name}"
    },
    "eventHubRuleId": {
        "type": "String",
        "metadata": {
            "displayName": "EventHubRuleID",
            "description": "The event hub RuleID for Azure Diagnostics",
            "strongType": "Microsoft.EventHub/Namespaces/AuthorizationRules",
            "assignPermissions": true
        },
        "defaultValue": "${var.eventhub_regions.cus.eh_id}"
    },
    "azureRegions": {
        "type": "Array",
        "metadata": {
            "displayName": "Allowed Locations",
            "description": "The list of locations that can be specified when deploying resources",
            "strongType": "location"
        },
        "defaultValue": ["Central US"]
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
    }
}
PARAMETERS
}

