resource "azurerm_policy_definition" "require-tag-values-requestor" {
  name                = "require-tag-values-requestor"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} requires a requestor tag for resource groups in POC and Sandbox subscriptions."
  description         = "Enforces a 'requestor' tag for resource groups in POC and Sandbox subscriptions. The requestor would be the user who requested a resource group to be created via SNOW request."
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
                "notContains": "['@anfcorp.com']"
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
          "displayName": "anf-requestor",
          "description": "Name of the tag key value: 'anf-requestor'"
        },
        "defaultValue": "anf-requestor"
      }
    }

  PARAMETERS
}