resource "azurerm_policy_definition" "diag-law" {
  for_each = { for diag in var.diag : diag.name => diag}

  name                = "${each.value.name}lawpol"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${each.value.name} to Log Analytics Workspace"
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
                "field": "type",
                "notEquals": "Microsoft.Databricks"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
              {
                "field": "[concat('tags[', parameters('DataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('DataBricksResourceTagValue')]" 
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
                                    "workspaceId": "[parameters('logAnalytics')]",
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
                                "value": "[concat(parameters('logAnalytics'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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
                "field": "type",
                "notEquals": "Microsoft.Databricks"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
              {
                "field": "[concat('tags[', parameters('DataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('DataBricksResourceTagValue')]" 
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
                                "type": "${each.value.type}/providers/diagnosticSettings",
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
                                "value": "[concat(parameters('logAnalytics'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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

  parameters = contains(var.diag_logs_only, each.value.name) ? (<<PARAMETERS
{    "DataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "DataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Value",
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
        "defaultValue": "diag-${each.value.profile}-LA"
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
{    "DataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "DataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Value",
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
        "defaultValue": "diag-${each.value.profile}-LA"
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


resource "azurerm_policy_definition" "diag-law-allmetrics" {
  for_each = { for diag in var.diag_all_metrics_only : diag.name => diag}

  name                = "${each.value.name}lawpol-allmetrics"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${each.value.name} to Log Analytics Workspace all metrics"
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
                "field": "type",
                "notEquals": "Microsoft.Databricks"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
              {
                "field": "[concat('tags[', parameters('DataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('DataBricksResourceTagValue')]" 
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
                                    "workspaceId": "[parameters('logAnalytics')]",
                                }
                            }
                        ],
                        "outputs": {
                            "policy": {
                                "type": "string",
                                "value": "[concat(parameters('logAnalytics'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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
                "field": "type",
                "notEquals": "Microsoft.Databricks"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notEquals": "[parameters('tagValue')]" 
            },
              {
                "field": "[concat('tags[', parameters('DataBricksResourceTagName'), ']')]",
                "notEquals": "[parameters('DataBricksResourceTagValue')]" 
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
                                "value": "[concat(parameters('logAnalytics'), 'configured for  diagnostics logs for ', ': ', parameters('name'))]"
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
{    "DataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "DataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Value",
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
        "defaultValue": "diag-${each.value.profile}-LA"
    },
    "logAnalytics": {
        "type": "string",
        "metadata": {
            "displayName": "logAnalytics",
            "description": "The target Log Analytics Workspace for Azure Diagnostics",
            "strongType": "omsWorkspace"
        },
        "defaultValue": "${var.law_regions.eus2.law_id}"
    }
}
PARAMETERS
  ) : <<PARAMETERS
{    "DataBricksResourceTagName":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Name",
          "description": "The Tag name of the databricks related resource to exclude (i.e. databricks-environment etc.)"
        },
        "defaultValue": "databricks-environment"
      },
     "DataBricksResourceTagValue":{
        "type": "String",
        "metadata": {
          "displayName": "DataBricksResource Tag Value",
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
        "defaultValue": "diag-${each.value.profile}-LA"
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
