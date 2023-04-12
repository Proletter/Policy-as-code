resource "azurerm_policy_definition" "allowed-sed-vm-sku" {
  name                = "allowed-sed-vm-sku"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "Allowed SED VM SKUs"
  description         = "Allowed VM SKUs for SED deployments using IaaS module."
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
            "equals": "Microsoft.Compute/virtualMachines"
          },
          {
            "not": {
              "field": "Microsoft.Compute/virtualMachines/sku.name",
              "in": "[parameters('listOfAllowedSKUs')]"
            }
          },
          {
            "anyOf": [
              {
                "field": "name",
                "like": "su*"
              },
              {
                "field": "name",
                "like": "sw*"
              }
            ]
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
      "listOfAllowedSKUs": {
        "type": "Array",
        "metadata": {
          "description": "The list of SKUs that can be specified for virtual machines.",
          "displayName": "Allowed SKUs",
          "strongType": "vmSKUs"
        },
         "defaultValue": ${jsonencode(var.allowed-vm-sku-sed)} 
      }
    }
PARAMETERS
}
