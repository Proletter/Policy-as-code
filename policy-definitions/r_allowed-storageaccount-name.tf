resource "azurerm_policy_definition" "storageaccount-name" {
  name                = "storageaccount-name"
  policy_type         = "Custom"
  mode                = "All"
  description         = "Allowed storage account names in seas subs"
  display_name        = "Allowed storage account names"
  management_group_id = var.mgmt-grp-def
  policy_rule         = <<POLICY_RULE
    {
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
          },
          {
          "not": {
            "anyOf": [
              {
              "field": "name",
              "match": "anfseas?????std??sa###"
              },
              {
              "field": "name",
              "match": "anfseas?????std?#sa###"
              },
              {
              "field": "name",
              "match": "anfseas?????pre??sa###"
              },
              {
              "field": "name",
              "match": "anfseas?????pre?#sa###"
              },
              {
              "field": "name",
              "match": "crpseas?????std??sa###"
              },
              {
              "field": "name",
              "match": "crpseas?????std?#sa###"
              },
              {
              "field": "name",
              "match": "crpseas?????pre??sa###"
              },
              {
              "field": "name",
              "match": "crpseas?????pre?#sa###"
              },
              {
              "field": "name",
              "like": "[concat(replace(resourceGroup().name,'-',''), '*')]"
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
}
