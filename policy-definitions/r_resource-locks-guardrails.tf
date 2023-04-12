resource "azurerm_policy_definition" "resource-lock-guardrails" {
  name                = "csmgmt-lock-policy-def"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Enforces resource locks on AnF management resources"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA


  policy_rule = <<POLICY_RULE
   {
      "if": {
        "allOf": [
          {
            "field": "[concat('tags[', parameters('tagName'), ']')]",
            "equals": "[parameters('tagValue')]"
          },
          {
            "not": {
              "anyOf": [
                { 
                  "field": "type",
                  "contains": "Microsoft.Network/privateDnsZones"
                },
                {
                  "field": "name",
                  "contains": "MC_"
                }
              ]
            }
          }   
        ]
      },
      "then": {
        "effect": "deployIfNotExists",
        "details": {
          "type": "Microsoft.Authorization/locks",
          "name": "AutoLock",
          "roleDefinitionIds": [
            "/providers/Microsoft.Authorization/roleDefinitions/4d97b98b-1d4f-4787-a291-c67834d212e7",
            "/subscriptions/a4783af3-21f8-45f1-8f58-6debba796fec/providers/Microsoft.Authorization/roleDefinitions/0c240f8c-7308-4521-bc80-7cd7b47e5cfc",
            "/providers/Microsoft.Authorization/roleDefinitions/36243c78-bf99-498c-9df9-86d9f8d28608"
          ],
          "existenceCondition": {
            "field": "Microsoft.Authorization/locks/level",
            "equals": "CanNotDelete"
          },
          "deployment": {
            "properties": {
              "mode": "incremental",
              "template": {
                "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
                "contentVersion": "1.0.0.0",
                "parameters": {
                  "lockScope": {
                    "type": "string"
                  },
                  "assignmentId": {
                    "type": "string"
                  }
                },
                "resources": [
                  {
                    "name": "AutoLock",
                    "type": "Microsoft.Authorization/locks",
                    "apiVersion": "2017-04-01",
                    "scope": "[parameters('lockScope')]",
                    "properties": {
                      "level": "CanNotDelete",
                      "notes": "[concat('This lock was deployed automatically by Azure Policy to prevent the resource from accidental deletion. AssignmentId: ', parameters('assignmentId'))]"
                    }
                  }
                ]
              },
              "parameters": {
                "lockScope": {
                  "value": "[concat(field('type'),'/', field('name'))]"
                },
                "assignmentId": {
                  "value": "[policy().assignmentId]"
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
        "tagName": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Name",
          "description": "The Tag namne to audit against (i.e. Environment, CostCenter, etc.)"
        },
        "defaultValue": "${var.cs-mgmt-lock-tag}"
      },
      "tagValue": {
        "type": "String",
        "metadata": {
          "displayName": "Tag Value",
          "description": "Value of the tag to audit against (i.e. Prod/UAT/TEST, 12345, etc.)"
        },
        "defaultValue": "${var.cs-mgmt-lock-tag-value}"
      }
      }
PARAMETERS

}