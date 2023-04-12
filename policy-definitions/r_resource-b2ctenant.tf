resource "azurerm_policy_definition" "b2c-connection" {
  name                = "b2c-connection"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Limit ability to create Azure B2C connections"
  description         = "Deny ability to create Azure B2C connections"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
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
            "equals": "Microsoft.AzureActiveDirectory/b2cDirectories"
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
        "defaultValue": "Deny"
    }
}
PARAMETERS

}




