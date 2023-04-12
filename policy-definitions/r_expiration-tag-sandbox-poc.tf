#Expiration date tag definition, added 12/30
resource "azurerm_policy_definition" "require-tag-values-expiration-date" {
  name                = "require-tag-values-expiration-date"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} enforces the expiration dates for resource groups in POC and Sandbox subscriptions."
  description         = "Enforces the expiration dates for resource groups in POC and Sandbox subscriptions."
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
      "category": "Tags"
    }

  METADATA

  policy_rule = <<POLICY_RULE
{
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Resources/subscriptions/resourceGroups"
          },
          {
            "anyOf": [
              {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "exists": "false"
              },
              {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "notMatch": "['##-##-####']"
              }
            ]
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }

  POLICY_RULE

  parameters = <<PARAMETERS
    {
      "tagName": {
        "type": "String",
        "metadata": {
          "displayName": "anf-expires_on",
          "description": "Name of the tag key value: 'anf-expires_on'"
        },
        "defaultValue": "anf-expires_on"
      }
    }

  PARAMETERS
}