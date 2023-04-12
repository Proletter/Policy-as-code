resource "azurerm_policy_definition" "eus2-allowed-resource-locations" {
  name                = "eus2-allowed-resource-locations"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Allowed Resource Locations for EUS2 Subs"
  description         = "Allowed Resource Locations for EUS2 Subs"
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
            "field": "location",
            "notIn": ${jsonencode(var.allowed-resource-location-eus2)}
          },
          {
            "field": "location",
            "notEquals": "global"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.AzureActiveDirectory/b2cDirectories"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.ContainerRegistry/registries/replications"
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }
POLICY_RULE
}

resource "azurerm_policy_definition" "seas-allowed-resource-locations" {
  name                = "seas-allowed-resource-locations"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Allowed Resource Locations for Seas Subs"
  description         = "Allowed Resource Locations for seas Subs"
  management_group_id = var.mgmt-grp-def

  policy_rule = <<POLICY_RULE
    {
      "if": {
        "allOf": [
          {
            "field": "location",
            "notIn": ${jsonencode(var.allowed-resource-location-seas)}
          },
          {
            "field": "location",
            "notEquals": "global"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.AzureActiveDirectory/b2cDirectories"
          },
          {
            "field": "type",
            "notequals": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.ContainerRegistry/registries/replications"
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }
POLICY_RULE

}


resource "azurerm_policy_definition" "eur-allowed-resource-locations" {
  name                  = "eur-allowed-resource-locations"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "${var.custom_prefix} Allowed Resource Locations for Europe Subs"
  description           = "Allowed Resource Locations for Europe Subs"
  management_group_id = var.mgmt-grp-def

  policy_rule = <<POLICY_RULE
    {
      "if": {
        "allOf": [
          {
            "field": "location",
            "notIn": ${jsonencode(var.allowed-resource-location-eur)}
          },
          {
            "field": "location",
            "notEquals": "global"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.AzureActiveDirectory/b2cDirectories"
          },
          {
            "field": "type",
            "notequals": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.ContainerRegistry/registries/replications"
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }
POLICY_RULE

}

resource "azurerm_policy_definition" "ea-allowed-resource-locations" {
  name                  = "ea-allowed-resource-locations"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "${var.custom_prefix} Allowed Resource Locations for East Asia Subs "
  description           = "Allowed Resource Locations for East Asia Subs"
  management_group_id = var.mgmt-grp-def

  policy_rule = <<POLICY_RULE
    {
      "if": {
        "allOf": [
          {
            "field": "location",
            "notIn": ${jsonencode(var.allowed-resource-location-ea)}
          },
          {
            "field": "location",
            "notEquals": "global"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.AzureActiveDirectory/b2cDirectories"
          },
          {
            "field": "type",
            "notequals": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.ContainerRegistry/registries/replications"
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }
POLICY_RULE

}

