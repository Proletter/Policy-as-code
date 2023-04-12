resource "azurerm_policy_definition" "subnet-nsg-policy" {
  name                = "subnet-nsg-policy"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Subnets should have an associated NSG."
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
{
    "category": "Custom"
}
  METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
        "anyOf": [
            {
                "allOf": [
                    {
                        "equals": "Microsoft.Network/virtualNetworks",
                        "field": "type"
                    },
                    {
                        "count": {
                            "field": "Microsoft.Network/virtualNetworks/subnets[*]",
                            "where": {
                                "allOf": [
                                    {
                                        "exists": "false",
                                        "field": "Microsoft.Network/virtualNetworks/subnets[*].networkSecurityGroup.id"
                                    },
                                    {
                                        "field": "Microsoft.Network/virtualNetworks/subnets[*].name",
                                        "notIn": "[parameters('excludedSubnets')]"
                                    }
                                ]
                            }
                        },
                        "notEquals": 0
                    }
                ]
            },
            {
                "allOf": [
                    {
                        "field": "type",
                        "equals": "Microsoft.Network/virtualNetworks/subnets"
                    },
                    {
                        "field": "name",
                        "notIn": "[parameters('excludedSubnets')]"
                    },
                    {
                        "field": "Microsoft.Network/virtualNetworks/subnets/networkSecurityGroup.id",
                        "exists": "false"
                    }
                ]
            }
        ]
    },
    "then": { "effect": "[parameters('effect')]" }
}
POLICY_RULE

  parameters = <<PARAMETERS
{
    "effect": {
        "type": "String",
        "metadata": {
            "displayName": "Effect",
            "description": "The effect determines what happens when the policy rule is evaluated to match"
        },
        "allowedValues": [
            "Audit",
            "Deny"
        ],
        "defaultValue": "Audit"
    },

    "excludedSubnets": {
        "type": "Array",
        "metadata": {
            "displayName": "Excluded Subnets",
            "description": "Array of subnet names that are excluded from this policy."
        },
        "defaultValue": [
            "GatewaySubnet",
            "AzureFirewallSubnet"
        ]
    }
}
PARAMETERS

}
