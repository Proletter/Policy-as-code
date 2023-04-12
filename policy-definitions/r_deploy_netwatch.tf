resource "azurerm_policy_definition" "deploy-netwatch-rg" {
  name                = "deploy-netwatch-rg"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "Deploy Netwatch RG where it isn't present"
  description         = "Ensures Network watcher Resource Group is deployed to all subscriptions"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA

  policy_rule = <<POLICY_RULE
{
"if": {
    "field": "type",
    "equals": "Microsoft.Resources/resourceGroups"
},
"then": {
    "effect": "DeployIfNotExists",
    "details": {
        "type": "Microsoft.Resources/resourceGroups",
        "roleDefinitionIds": [
            "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
        ],
        "existenceCondition": {
            "field": "Name",
            "equals": "NetworkWatcherRG"
        },
        "deployment": {
            "properties": {
                "mode": "incremental",
                "template": {
                    "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                    "contentVersion": "1.0.0.0",
                    "resources": [{
                        "name": "NetworkWatcherRG",
                        "type": "Microsoft.Resources/resourceGroups",
                        "apiVersion": "2014-04-01-preview",
                        "properties": {
                            "status": "Enabled"
                        }
                    }
                  ]
                }
            }
        }
    }
}
}
POLICY_RULE
}
