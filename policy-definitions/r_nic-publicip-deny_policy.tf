resource "azurerm_policy_definition" "nic-publicip-deny" {
  name                = "nic-publicip-deny"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Enforce deny of associating public IPs with NICs"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
{
    "category": "Custom",
    "version": "1.0.0"
}
METADATA

  policy_rule = <<POLICY_RULE
{
"if": {
    "allOf": [
        {
            "field": "type",
            "equals": "Microsoft.Network/networkInterfaces"
        },
        {
            "not": {
                "field": "Microsoft.Network/networkInterfaces/ipconfigurations[*].publicIpAddress.id",
                "notLike": "*"
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
    }
}
PARAMETERS

}
