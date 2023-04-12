resource "azurerm_policy_definition" "require-tag-rg" {
  for_each = toset(var.mandatory_tag_keys)

  name                = "require-tag-rg-${each.key}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Requires tag ${each.key} for resource group"
  description         = "Requires the mandatory tag key ${each.key} when any resource group missing this tag is created or updated. \nExisting resource groups can be remediated by triggering a remediation task.\nIf the tag exists with a different value it will not be changed."
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
                "equals": "Microsoft.Resources/subscriptions/resourceGroups"
            },
            {
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "exists": "false"
            },
            {
                "not": {
                    "anyOf": [
                        {
                            "field": "name",
                            "like": "cloud-shell-storage-*"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.Network/privateDnsZones/virtualNetworkLinks"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.VisualStudio/account"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.ContainerRegistry/registries/replications"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.Network/networkWatchers/flowLogs"
                        }
                    ]
                }
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
            "displayName": "Mandatory Tag ${each.key}",
            "description": "Name of the tag, such as ${each.key}"
          },
          "defaultValue": "${each.key}"
        }
  }
PARAMETERS
}

resource "azurerm_policy_definition" "inherit-tag-from-rg" {
  for_each = toset(var.mandatory_tag_keys)

  name                = "inherit-tag-from-rg-${each.key}"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Inherit tag ${each.key} from the resource group"
  description         = "Adds the specified mandatory tag ${each.key} with its value from the parent resource group when any resource missing this tag is created or updated. Existing resources can be remediated by triggering a remediation task. If the tag exists with a different value it will not be changed."
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
                "field": "[concat('tags[', parameters('tagName'), ']')]",
                "exists": "false"
            },
            {
                "value": "[resourceGroup().tags[parameters('tagName')]]",
                "notEquals": ""
            },
            {
                "not": {
                    "anyOf": [
                        {
                            "field": "name",
                            "like": "cloud-shell-storage-*"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.Network/privateDnsZones/virtualNetworkLinks"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.VisualStudio/account"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.ContainerRegistry/registries/replications"
                        },
                        {
                            "field": "type",
                            "equals": "Microsoft.Network/networkWatchers/flowLogs"
                        }
                    ]
                }
            }
        ]
    },
    "then": {
        "effect": "modify",
        "details": {
            "roleDefinitionIds": [
                "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
            ],
            "operations": [
                {
                    "operation": "add",
                    "field": "[concat('tags[', parameters('tagName'), ']')]",
                    "value": "[resourceGroup().tags[parameters('tagName')]]"
                }
            ]
        }
    }
}
POLICY_RULE

  parameters = <<PARAMETERS
    {
        "tagName": {
          "type": "String",
          "metadata": {
            "displayName": "Mandatory Tag ${each.key}",
            "description": "Name of the tag, such as '${each.key}'"
          },
          "defaultValue": "${each.key}"
        }
  }
PARAMETERS

}

resource "azurerm_policy_definition" "require-tag-values-crit" {
  name                = "require-tag-values-crit"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Encorces the allowable values for the tag anf-business_criticality"
  description         = "Encorces the allowable values for the tag anf-business_criticality"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "Tags"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
        "not": {
            "anyOf": [
                {
                    "field": "[concat('tags[', parameters('tagName'), ']')]",
                    "in": "[parameters('possibleTagValues')]"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.Network/privateDnsZones/virtualNetworkLinks"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.VisualStudio/account"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.ContainerRegistry/registries/replications"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.Network/networkWatchers/flowLogs"
                }
            ]
        }
    },
    "then": {
        "effect": "audit"
    }
}

POLICY_RULE

  parameters = <<PARAMETERS
{
    "tagName": {
      "type": "String",
      "metadata": {
        "displayName": "Required Key anf-business_criticality",
        "description": "Name of the tag, such as 'anf-business_criticality'"
      },
      "defaultValue": "anf-business_criticality"
    },
    "possibleTagValues": {
      "type": "Array",
      "metadata": {
        "displayName": "Required Values for Value",
        "description": "All possible allowed values for the tag specified"
      },
      "defaultValue": ${jsonencode(var.tag-anf-business-criticality-values)}
    }
  }
PARAMETERS

}

resource "azurerm_policy_definition" "require-tag-values-env" {
  name                = "require-tag-values-env"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Enforces the allowable values for the tag anf-environment"
  description         = "Enforces the allowable values for the tag anf-environment."
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "Tags"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
        "not": {
            "anyOf": [
                {
                    "field": "[concat('tags[', parameters('tagName'), ']')]",
                    "in": "[parameters('possibleTagValues')]"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.Network/privateDnsZones/virtualNetworkLinks"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.VisualStudio/account"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.ContainerRegistry/registries/replications"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.Network/networkWatchers/flowLogs"
                }
            ]
        }
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
        "displayName": "Required Key anf-environment",
        "description": "Name of the tag, such as 'environment'"
      },
      "defaultValue": "anf-environment"
    },
    "possibleTagValues": {
      "type": "Array",
      "metadata": {
        "displayName": "Required Values for Value",
        "description": "All possible allowed values for the tag specified"
      },
      "defaultValue": ${jsonencode(var.tag-anf-environment-values)}
    }
  }
PARAMETERS

}

resource "azurerm_policy_definition" "require-tag-values-costcenter" {
  name                = "require-tag-values-costcenter"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Enforces the allowable values for the tag anf-cost_center"
  description         = "Enforces the allowable values for the tag anf-cost_center."
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "Tags"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
    "if": {
        "not": {
            "anyOf": [
                {
                    "field": "[concat('tags[', parameters('tagName'), ']')]",
                    "in": "[parameters('possibleTagValues')]"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.Network/privateDnsZones/virtualNetworkLinks"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.VisualStudio/account"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.ContainerRegistry/registries/replications"
                },
                {
                    "field": "type",
                    "equals": "Microsoft.Network/networkWatchers/flowLogs"
                }
            ]
        }
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
        "displayName": "Required Key anf-cost_center",
        "description": "Name of the tag, such as 'cost_center'"
      },
      "defaultValue": "anf-cost_center"
    },
    "possibleTagValues": {
      "type": "Array",
      "metadata": {
        "displayName": "Required Values for Value",
        "description": "All possible allowed values for the tag specified"
      },
      "defaultValue": ${jsonencode(var.tag-anf-costcenter-values)}
    }
  }
PARAMETERS

}

resource "azurerm_policy_definition" "require-tag-iaas" {
  for_each = toset(var.iaas_tag_keys)

  name                = "require-tag-rg-${each.key}"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "${var.custom_prefix} Requires tag ${each.key} for iaas VMs"
  description         = "Requires the mandatory tag key ${each.key} when any managed iaas VM missing this tag is created or updated. \nExisting iaas VMs can be remediated by triggering a remediation task.\nIf the tag exists with a different value it will not be changed."
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
              "equals": "Microsoft.Compute/virtualMachines"
            },
            {
              "field": "[concat('tags[', parameters('tagName'), ']')]",
              "exists": "false"
            },
            {
              "field": "name",
              "match": "c???????????###"
            },
            {
              "not": {
                "anyOf": [
                  {
                    "field": "name",
                    "match": "cu????????sb###"
                  },
                  {
                    "field": "name",
                    "match": "ca????????sb###"
                  },
                  {
                    "field": "name",
                    "match": "cw????????sb###"
                  }
                ]
              }
            }
          ]
        },
        "then": {
          "effect": "audit"
        }
  }
POLICY_RULE

  parameters = <<PARAMETERS
    {
        "tagName": {
          "type": "String",
          "metadata": {
            "displayName": "Mandatory Tag ${each.key}",
            "description": "Name of the tag, such as ${each.key}"
          },
          "defaultValue": "${each.key}"
        }
  }
PARAMETERS
}

resource "azurerm_policy_definition" "require-tag-values-appowner" {
  name         = "require-tag-values-appowner" 
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "${var.custom_prefix} Enforces the allowable values for the tag anf-app_owner"
  description  = "Enforces the allowable values for the tag anf-app_owner."
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
                  "field": "[concat('tags[', parameters('tagName'), ']')]",
                  "notIn": "[parameters('possibleTagValues')]"
              },
              {
                  "field": "[concat('tags[', parameters('tagName'), ']')]",
                  "exists": "true"
              },
              {
                  "field": "name",
                  "notIn": "[parameters('excludedResourceNames')]"
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
          "displayName": "Required Key anf-app_owner",
          "description": "Name of the tag, such as 'anf-app_owner'"
        },
        "defaultValue": "anf-app_owner"
      },
      "possibleTagValues": {
        "type": "Array",
        "metadata": {
          "displayName": "Required Values for Value",
          "description": "All possible allowed values for the tag specified"
        },
        "defaultValue": ${jsonencode(var.tag-anf-appowner-values)}
      },
      "excludedResourceNames": {
        "type": "Array",
        "metadata": {
          "displayName": "Required Values for Value",
          "description": "All possible allowed values for the tag specified"
        },
        "defaultValue": ${jsonencode(var.tag-anf-appowner-excluded-names)}
      }
    }

  PARAMETERS
}
