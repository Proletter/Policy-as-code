resource "azurerm_policy_definition" "network-watcher-def" {
  name                = "Network Watcher should be enabled"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Audit for Network Watcher in same region on AnF VNETs"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "Network"
    }

METADATA

  policy_rule = <<POLICY_RULE
    {
        "if": {
          "field": "type",
          "equals": "Microsoft.Network/virtualNetworks"
        },
        "then": {
          "effect": "auditIfNotExists",
          "details": {
            "type": "Microsoft.Network/networkWatchers",
            "existenceCondition": {
              "field": "location",
              "equals": "[field('location')]"
            },
            "existenceScope": "subscription"
          }
        }
      }
POLICY_RULE
}