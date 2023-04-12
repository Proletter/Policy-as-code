resource "azurerm_policy_definition" "enable_all_activity_logs_policy" {
  name                = "enable-all-activity-logs"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Enable all Activity Logs to Log Analytics"
  description         = "Enables log analytics logging for all activity logs at subscription level"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
      "field": "type",
      "equals": "Microsoft.Resources/subscriptions"
    },
    "then": {
      "effect": "DeployIfNotExists",
      "details": {
        "type": "Microsoft.Insights/diagnosticSettings",
        "deploymentScope": "Subscription",
        "existenceScope": "Subscription",
        "existenceCondition": {
          "allOf": [
            {
              "field": "Microsoft.Insights/diagnosticSettings/logs.enabled",
              "equals": "[parameters('logsEnabled')]"
            },
            {
              "field": "Microsoft.Insights/diagnosticSettings/workspaceId",
              "equals": "[parameters('logAnalytics')]"
            }
          ]
        },
        "deployment": {
          "location": "eastus2",
          "properties": {
            "mode": "incremental",
            "template": {
              "$schema": "https://schema.management.azure.com/schemas/2018-05-01/subscriptionDeploymentTemplate.json#",
              "contentVersion": "1.0.0.0",
              "parameters": {
                "logAnalytics": {
                  "type": "string"
                },
                "logsEnabled": {
                  "type": "string"
                }
              },
              "variables": {},
              "resources": [
                {
                  "name": "subscriptionToLa",
                  "type": "Microsoft.Insights/diagnosticSettings",
                  "apiVersion": "2021-05-01-preview",
                  "location": "Global",
                  "properties": {
                    "workspaceId": "[parameters('logAnalytics')]",
                    "logs": [
                      {
                        "category": "Administrative",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Security",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "ServiceHealth",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Alert",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Recommendation",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Policy",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Autoscale",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "ResourceHealth",
                        "enabled": "[parameters('logsEnabled')]"
                      }
                    ]
                  }
                }
              ],
              "outputs": {}
            },
            "parameters": {
              "logAnalytics": {
                "value": "[parameters('logAnalytics')]"
              },
              "logsEnabled": {
                "value": "[parameters('logsEnabled')]"
              }
            }
          }
        },
        "roleDefinitionIds": [
          "/providers/microsoft.authorization/roleDefinitions/749f88d5-cbae-40b8-bcfc-e573ddc772fa",
          "/providers/microsoft.authorization/roleDefinitions/92aaf0da-9dab-42b6-94a3-d43ce8d16293"
        ]
      }
    }
  }
POLICY_RULE

  parameters = <<PARAMETERS
{
    "logAnalytics": {
      "type": "String",
      "metadata": {
        "displayName": "Primary Log Analytics workspace",
        "description": "If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permissions (or similar) to the policy assignment's principal ID.",
        "strongType": "omsWorkspace",
        "assignPermissions": true
      },
      "defaultValue": "${var.law_regions.eus2.law_id}"
    },
    "logsEnabled": {
      "type": "String",
      "metadata": {
        "displayName": "Enable logs",
        "description": "Whether to enable logs stream to the Log Analytics workspace - True or False"
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

resource "azurerm_policy_definition" "enable_all_activity_logs_eventhub_policy" {
  name                = "enable-all-activity-logs-eventhub"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Enable all Activity Logs to Event Hub"
  description         = "Enables log analytics logging for all activity logs at subscription level"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
      "field": "type",
      "equals": "Microsoft.Resources/subscriptions"
    },
    "then": {
      "effect": "DeployIfNotExists",
      "details": {
        "type": "Microsoft.Insights/diagnosticSettings",
        "deploymentScope": "Subscription",
        "existenceScope": "Subscription",
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
        "deployment": {
          "location": "eastus2",
          "properties": {
            "mode": "incremental",
            "template": {
              "$schema": "https://schema.management.azure.com/schemas/2018-05-01/subscriptionDeploymentTemplate.json#",
              "contentVersion": "1.0.0.0",
              "parameters": {
                "eventhubname": {
                  "type": "string"
                },
                "eventHubAuthorizationRuleId":{
                  "type": "string"
                },
                "logsEnabled": {
                  "type": "string"
                }
              },
              "variables": {},
              "resources": [
                {
                  "name": "subscriptionToEH",
                  "type": "Microsoft.Insights/diagnosticSettings",
                  "apiVersion": "2021-05-01-preview",
                  "location": "Global",
                  "properties": {
                    "eventHubName": "[parameters('eventhubname')]",
                    "eventHubAuthorizationRuleId": "[parameters('eventHubAuthorizationRuleId')]",
                    "logs": [
                      {
                        "category": "Administrative",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Security",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "ServiceHealth",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Alert",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Recommendation",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Policy",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "Autoscale",
                        "enabled": "[parameters('logsEnabled')]"
                      },
                      {
                        "category": "ResourceHealth",
                        "enabled": "[parameters('logsEnabled')]"
                      }
                    ]
                  }
                }
              ],
              "outputs": {}
            },
            "parameters": {
              "eventhubname": {
                "value": "[parameters('eventhubname')]"
              },
              "eventHubAuthorizationRuleId": {
                "value": "[parameters('eventHubAuthorizationRuleId')]"
              },
              "logsEnabled": {
                "value": "[parameters('logsEnabled')]"
              }
            }
          }
        },
        "roleDefinitionIds": [
          "/providers/microsoft.authorization/roleDefinitions/749f88d5-cbae-40b8-bcfc-e573ddc772fa",
          "/providers/microsoft.authorization/roleDefinitions/92aaf0da-9dab-42b6-94a3-d43ce8d16293"
        ]
      }
    }
  }
POLICY_RULE

  parameters = <<PARAMETERS
{
    "eventhubname": {
      "type": "String",
      "metadata": {
        "displayName": "EventHub Namespace"
      },
      "defaultValue": "${var.eventhub_regions.eus2.eh_name}"
    },
    "eventHubAuthorizationRuleId": {
      "type": "String",
      "metadata": {
        "displayName": "Eventhub Rule ID"
      },
      "defaultValue": "${var.eventhub_regions.eus2.eh_id}"
    },
    "logsEnabled": {
      "type": "String",
      "metadata": {
        "displayName": "Enable logs",
        "description": "Whether to enable logs stream to the Log Analytics workspace - True or False"
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
