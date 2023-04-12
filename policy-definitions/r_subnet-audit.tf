resource "azurerm_policy_definition" "subnet-route-table-required" {
  name                = "require-route-table-subnet"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Subnets should have Route Table - AUDIT"
  description         = "Requires an associated Route Table for Subnets"
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
            "equals": "Microsoft.Network/virtualNetworks/subnets"
          },
          {
            "field": "Microsoft.Network/virtualNetworks/subnets/routeTable.id",
            "exists": "false"
          }
        ]
      },
      "then": {
        "effect": "audit"
      }
    }
POLICY_RULE
}