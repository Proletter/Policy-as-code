#####################################
############# Event Hub #############
#####################################
resource "azurerm_policy_definition" "az-storage-diag-eh" {
  for_each            = var.eventhub_regions

  name                = "az-stv1-diag-eh${each.value.context1}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Storage to Event Hub${each.value.context2}"
  description         = "Deploys Az Storage Event Hub diagnostics Settings"
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
                "equals": "Microsoft.Storage/storageAccounts"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "kind",
                "equals": "Storage"
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
                                "type": "Microsoft.Storage/storageAccounts/providers/diagnosticSettings",
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
        "defaultValue": "Diag-azfirewall-eh"
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
        "defaultValue":"${each.value.eh_id}"
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






resource "azurerm_policy_definition" "az-storage-v2-diag-eh" {
  for_each            = var.eventhub_regions

  name                = "az-stv2-diag-eh${each.value.context1}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Storage V2 to Event Hub${each.value.context2}"
  description         = "Deploys Az Storage V2 Event Hub  diagnostics Settings"
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
                "equals": "Microsoft.Storage/storageAccounts"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "kind",
                "equals": "StorageV2"
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
                                "type": "Microsoft.Storage/storageAccounts/providers/diagnosticSettings",
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
        "defaultValue": "Diag-azfirewall-eh"
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
        "defaultValue":["${each.value.region}"]
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


resource "azurerm_policy_definition" "az-storage-blob-diag-eh" {
  for_each            = var.eventhub_regions

  name                = "az-stblb-diag-eh${each.value.context1}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Blob Storage to Event Hub${each.value.context2}"
  description         = "Deploys Az Blob Storage Event Hub diagnostics Settings"
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
                "equals": "Microsoft.Storage/storageAccounts"
            },
            {
                "field": "location",
                "in": "[parameters('azureRegions')]"
            },
            {
                "field": "kind",
                "equals": "BlobStorage"
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
                                "type": "Microsoft.Storage/storageAccounts/providers/diagnosticSettings",
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
        "defaultValue": "Diag-azfirewall-eh"
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



#####################################
############# Log Analytics #########
#####################################

resource "azurerm_policy_definition" "az-storage-diag-law" {
  name                = "az-stv1-diag-law"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Storage to Log Analytics Workspace"
  description         = "Az Storage to Log Analytics Workspace"
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
                "equals": "Microsoft.Storage/storageAccounts"
            },
            {
                "field": "location",
                "in": "[parameters('AzureRegions')]"
            },
            {
                "field": "kind",
                "equals": "Storage"
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
                                "type": "Microsoft.Storage/storageAccounts/providers/diagnosticSettings",
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
        "defaultValue": "diag-azfirewall-LA"
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
        "defaultValue": ["East US 2", "Central US", "North Europe", "West Europe"]
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


resource "azurerm_policy_definition" "az-storage-v2-diag-law" {
  name                = "az-stv2-diag-law"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Storage V2 to Log Analytics Workspace"
  description         = "Az Storage V2 to Log Analytics Workspace"
  management_group_id = var.mgmt-grp-def
  metadata            = <<METADATA
    {
    "category": "${var.policy_definition_category}",
    "version" : "1.0.0"
    }
METADATA
  policy_rule         = <<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "Microsoft.Storage/storageAccounts"
            },
            {
                "field": "location",
                "in": "[parameters('AzureRegions')]"
            },
            {
                "field": "kind",
                "equals": "StorageV2"
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
                                "type": "Microsoft.Storage/storageAccounts/providers/diagnosticSettings",
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
        "defaultValue": "diag-azfirewall-LA"
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
        "defaultValue": ["East US 2", "Central US", "North Europe", "West Europe"]
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


resource "azurerm_policy_definition" "az-storage-blob-diag-law" {
  name                = "az-stblb-diag-law"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Blob Storage to Log Analytics Workspace"
  description         = "Az Blob Storage to Log Analytics Workspace"
  management_group_id = var.mgmt-grp-def
  metadata            = <<METADATA
    {
    "category": "${var.policy_definition_category}",
    "version" : "1.0.0"
    }
METADATA
  policy_rule         = <<POLICY_RULE
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "Microsoft.Storage/storageAccounts"
            },
            {
                "field": "location",
                "in": "[parameters('AzureRegions')]"
            },
            {
                "field": "kind",
                "equals": "BlobStorage"
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
                                "type": "Microsoft.Storage/storageAccounts/providers/diagnosticSettings",
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
        "defaultValue": "diag-azfirewall-LA"
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
        "defaultValue": ["East US 2", "Central US", "North Europe", "West Europe"]
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

###################################
############## Others #############
###################################
resource "azurerm_policy_definition" "storage-protection" {
  name                = "az-st-protection"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Az Storage Account Data Protection Policy"
  description         = "Audit storage accounts with specified tags not using redundant storage type"
  management_group_id = var.mgmt-grp-def

  metadata    = <<METADATA
    {
    "category": "Storage",
    "version" : "1.0.0"
    }
METADATA
  policy_rule = <<POLICY_RULE
{
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
          },
          {
            "field": "[concat('tags[', parameters('inclusionTagName'), ']')]",
            "in": "[parameters('inclusionTagValue')]"
          },
          {
            "not": {
              "field": "Microsoft.Storage/storageAccounts/sku.name",
              "in": [
                "Standard_GRS",
                "Standard_RAGRS",
                "Standard_GZRS",
                "Standard_RAGZRS"
              ]
            }
          }
        ]
      },
      "then": {
        "effect": "[parameters('effect')]"
      }
    }
POLICY_RULE

  parameters = <<PARAMETERS
{
      "inclusionTagName": {
        "type": "String",
        "metadata": {
          "displayName": "Inclusion Tag Name",
          "description": "Name of the tag to use for including StorageAccounts in the scope of this policy. This should be used along with the Inclusion Tag Value parameter."
        },
        "defaultValue": "${var.tag-anf-storage-account-data-protection-key}"
      },
      "inclusionTagValue": {
        "type": "Array",
        "metadata": {
          "displayName": "Inclusion Tag Values",
          "description": "Value of the tag to use for including StorageAccounts in the scope of this policy (in case of multiple values, use a comma-separated list). This should be used along with the Inclusion Tag Name parameter."
        },
        "defaultValue": ${jsonencode(var.tag-anf-storage-account-data-protection-values)}
      },
      "effect": {
        "type": "String",
        "defaultValue": "Audit",
        "allowedValues": [
          "Audit",
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


