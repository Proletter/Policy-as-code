resource "azurerm_policy_definition" "private_dns_zone_global" {
  for_each = var.private_dns_zone_global

  name                = "az-pdns-${each.value}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${each.value} Private DNS Auto Configuration"
  description         = "Deploys ${each.value} Private DNS Auto Configuration"
  management_group_id = var.mgmt-grp-def

  metadata    = <<METADATA
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
            "equals": "Microsoft.Network/privateEndpoints"
          },
          {
            "count": {
              "field": "Microsoft.Network/privateEndpoints/privateLinkServiceConnections[*].groupIds[*]",
              "where": {
                "field": "Microsoft.Network/privateEndpoints/privateLinkServiceConnections[*].groupIds[*]",
                "equals": "${each.value}"
              }
            },
            "greaterOrEquals": 1
          }
        ]
      },
      "then": {
        "effect": "deployIfNotExists",
        "details": {
          "type": "Microsoft.Network/privateEndpoints/privateDnsZoneGroups",
          "roleDefinitionIds": [
            "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
          ],
          "existenceCondition": {
            "allOf": [
              {
                "field": "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/privateDnsZoneConfigs[*].privateDnsZoneId",
                "equals": "[parameters('privateDnsZoneId')]"
              }
            ]
          },
          "deployment": {
            "properties": {
              "mode": "incremental",
              "template": {
                "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                "contentVersion": "1.0.0.0",
                "parameters": {
                  "privateDnsZoneId": {
                    "type": "string"
                  },
                  "privateEndpointName": {
                    "type": "string"
                  },
                  "location": {
                    "type": "string"
                  }
                },
                "resources": [
                  {
                    "name": "[concat(parameters('privateEndpointName'), '/deployedByPolicy')]",
                    "type": "Microsoft.Network/privateEndpoints/privateDnsZoneGroups",
                    "apiVersion": "2020-03-01",
                    "location": "[parameters('location')]",
                    "properties": {
                      "privateDnsZoneConfigs": [
                        {
                          "name": "${each.value}-privateDnsZone",
                          "properties": {
                            "privateDnsZoneId": "[parameters('privateDnsZoneId')]"
                          }
                        }
                      ]
                    }
                  }
                ]
              },
              "parameters": {
                "privateDnsZoneId": {
                  "value": "[parameters('privateDnsZoneId')]"
                },
                "privateEndpointName": {
                  "value": "[field('name')]"
                },
                "location": {
                  "value": "[field('location')]"
                }
              }
            }
          }
        }
      }
    }
POLICY_RULE

  parameters = <<PARAMETERS
    {
    "privateDnsZoneId": {
      "type": "String",
      "metadata": {
        "displayName": "privateDnsZoneId",
        "strongType": "Microsoft.Network/privateDnsZones"
      },
      "defaultValue": "/subscriptions/d96f4767-4ef4-4d26-b035-485e8bdacc86/resourceGroups/netarch-net-pr-rg-pdns/providers/Microsoft.Network/privateDnsZones/${each.key}"
    }
  }
PARAMETERS
}

resource "azurerm_policy_definition" "private_dns_zone_regional" {
  for_each = { for index, url in var.private_dns_zone_regional : index => url }

  name                = "az-${each.value.subresource}-${each.value.region}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${each.value.subresource} Private DNS Auto Configuration"
  description         = "Deploys ${each.value.region} ${each.value.subresource} Private DNS Auto Configuration"
  management_group_id = var.mgmt-grp-def

  metadata    = <<METADATA
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
            "equals": "Microsoft.Network/privateEndpoints"
          },
          {
            "field": "location",
            "in": "[parameters('azureRegions')]"
          },
          {
            "count": {
              "field": "Microsoft.Network/privateEndpoints/privateLinkServiceConnections[*].groupIds[*]",
              "where": {
                "field": "Microsoft.Network/privateEndpoints/privateLinkServiceConnections[*].groupIds[*]",
                "equals": "${each.value.subresource}"
              }
            },
            "greaterOrEquals": 1
          }
        ]
      },
      "then": {
        "effect": "deployIfNotExists",
        "details": {
          "type": "Microsoft.Network/privateEndpoints/privateDnsZoneGroups",
          "roleDefinitionIds": [
            "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
          ],
          "existenceCondition": {
            "allOf": [
              {
                "field": "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/privateDnsZoneConfigs[*].privateDnsZoneId",
                "equals": "[parameters('privateDnsZoneId')]"
              }
            ]
          },
          "deployment": {
            "properties": {
              "mode": "incremental",
              "template": {
                "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                "contentVersion": "1.0.0.0",
                "parameters": {
                  "privateDnsZoneId": {
                    "type": "string"
                  },
                  "privateEndpointName": {
                    "type": "string"
                  },
                  "location": {
                    "type": "string"
                  }
                },
                "resources": [
                  {
                    "name": "[concat(parameters('privateEndpointName'), '/deployedByPolicy')]",
                    "type": "Microsoft.Network/privateEndpoints/privateDnsZoneGroups",
                    "apiVersion": "2020-03-01",
                    "location": "[parameters('location')]",
                    "properties": {
                      "privateDnsZoneConfigs": [
                        {
                          "name": "${each.value.subresource}-privateDnsZone",
                          "properties": {
                            "privateDnsZoneId": "[parameters('privateDnsZoneId')]"
                          }
                        }
                      ]
                    }
                  }
                ]
              },
              "parameters": {
                "privateDnsZoneId": {
                  "value": "[parameters('privateDnsZoneId')]"
                },
                "privateEndpointName": {
                  "value": "[field('name')]"
                },
                "location": {
                  "value": "[field('location')]"
                }
              }
            }
          }
        }
      }
    }
POLICY_RULE

  parameters = <<PARAMETERS
    {
    "privateDnsZoneId": {
      "type": "String",
      "metadata": {
        "displayName": "privateDnsZoneId",
        "strongType": "Microsoft.Network/privateDnsZones"
      },
      "defaultValue": "/subscriptions/d96f4767-4ef4-4d26-b035-485e8bdacc86/resourceGroups/netarch-net-pr-rg-pdns/providers/Microsoft.Network/privateDnsZones/${each.value.url}"
    },
    "azureRegions": {
      "type": "Array",
        "metadata": {
          "displayName": "Allowed Locations",
          "description": "The list of locations that can be specified when deploying resources",
        "strongType": "location"
      },
      "defaultValue": ["${each.value.region}"]
    }
  }
PARAMETERS
}
