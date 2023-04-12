resource "azurerm_role_assignment" "cost_center_tag_governance_sb" {
  scope                            = var.mgmt-anfcorp-sandbox
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.cost_center_tag_governance_sb.identity[0].principal_id
}
