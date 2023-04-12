resource "azurerm_policy_definition" "route-table-default-route-def" {
  name                = "route-table-default-route-policy-def"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Audit or Deny default route not pointing to regional firewall on AnF resources"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA


  policy_rule = <<POLICY_RULE
   {
      "if": {
        "anyOf": [
          {
            "allOf": [
              {
                "field": "type",
                "equals": "Microsoft.Network/routeTables"
              },
              {
                "count": {
                  "field": "Microsoft.Network/routeTables/routes[*]",
                  "where": {
                    "allOf": [
                      {
                        "field": "Microsoft.Network/routeTables/routes[*].addressPrefix",
                        "equals": "0.0.0.0/0"
                      },
                      {
                        "anyOf": [
                          {
                            "field": "Microsoft.Network/routeTables/routes[*].nextHopType",
                            "notEquals": "VirtualAppliance"
                          },
                          {
                            "field": "Microsoft.Network/routeTables/routes[*].nextHopIpAddress",
                            "notEquals": "[parameters('routeTableSettings')[field('location')].virtualApplianceIpAddress]"
                          }
                        ]
                      }
                    ]
                  }
                },
                "greater": 0
              }
            ]
          },
          {
            "allOf": [
              {
                "field": "type",
                "equals": "Microsoft.Network/routeTables/routes"
              },
              {
                "field": "Microsoft.Network/routeTables/routes/addressPrefix",
                "equals": "0.0.0.0/0"
              },
              {
                "anyOf": [
                  {
                    "field": "Microsoft.Network/routeTables/routes/nextHopType",
                    "notEquals": "VirtualAppliance"
                  },
                  {
                    "field": "Microsoft.Network/routeTables/routes/nextHopIpAddress",
                    "notEquals": "[parameters('routeTableSettings')[field('location')].virtualApplianceIpAddress]"
                  }
                ]
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
    "routeTableSettings": {
        "type": "Object",
        "metadata": {
          "displayName": "Route Table Settings",
          "description": "Location-specific settings for route tables."
        }
      }
    }
PARAMETERS

}

resource "azurerm_policy_definition" "route-table-no-default-route-def" {
  name                = "route-table-no-default-route-policy-def"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Audit for default route on AnF route tables"
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
            "field": "type",
            "equals": "Microsoft.Network/routeTables"
          },
          {
            "count": {
              "field": "Microsoft.Network/routeTables/routes[*]",
              "where": {
                "field": "Microsoft.Network/routeTables/routes[*].addressPrefix",
                "equals": "0.0.0.0/0"
              }
            },
            "equals": 0
          }
        ]
      },
      "then": {
        "effect": "Audit"
      }
    }
POLICY_RULE
}