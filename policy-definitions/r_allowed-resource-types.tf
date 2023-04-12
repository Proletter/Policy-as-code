resource "azurerm_policy_definition" "azp-allowed-resource-types" {
  name                = "azp-allowed-resource-types"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Allowed Resource Types for AZP Subs"
  description         = "The list of resource types that can be deployed for AZP Subs"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
      "if": {
        "not": {
          "field": "type",
          "in": "[parameters('listOfResourceTypesAllowed')]"
        }
      },
      "then": {
        "effect": "deny"
      }
    }
POLICY_RULE

  parameters = <<PARAMETERS
{
      "listOfResourceTypesAllowed": {
        "type": "Array",
        "metadata": {
          "description": "The list of resource types that can be deployed.",
          "displayName": "Allowed resource types",
          "strongType": "resourceTypes"
        },
        "defaultValue": ${jsonencode(var.allowed-resource-types)}
      }
}

PARAMETERS
}
