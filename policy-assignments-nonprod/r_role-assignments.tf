resource "azurerm_role_assignment" "monitoring_governance_np" {
  for_each = toset(local.monitoring_governance_perms)

  scope = var.mgmt-anfcorp-nonprod
  role_definition_name = each.value
  principal_id = azurerm_management_group_policy_assignment.monitoring_governance_np.identity[0].principal_id
}

resource "azurerm_role_assignment" "monitoring_governance_np_azp" {
  scope                            = var.mgmt-anfcorp-azp
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.monitoring_governance_np.identity[0].principal_id
}

resource "azurerm_role_assignment" "tag_governance_np" {
  scope                            = var.mgmt-anfcorp-nonprod
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.tag_governance_np.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_np" {
  scope                            = var.mgmt-anfcorp-nonprod
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.private_dns_governance_np.identity[0].principal_id
}

resource "azurerm_role_assignment" "cuspdns_config_np" {
  scope                            = var.mgmt-anfcorp-nonprod
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.cus_private_dns_governance_np.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_azp" {
  scope                            = var.mgmt-anfcorp-azp
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.cus_private_dns_governance_np.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_azp" {
  scope                            = var.mgmt-anfcorp-azp
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_management_group_policy_assignment.private_dns_governance_np.identity[0].principal_id
}