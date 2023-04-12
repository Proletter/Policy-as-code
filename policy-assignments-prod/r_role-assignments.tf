resource "azurerm_role_assignment" "monitoring_governance_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.monitoring_governance_azp.identity[0].principal_id
}

resource "azurerm_role_assignment" "monitoring_governance_pr" {
  for_each = toset(local.monitoring_governance_perms)

  scope = var.mgmt-anfcorp-prod
  role_definition_name = each.value
  principal_id = azurerm_management_group_policy_assignment.monitoring_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "monitoring_governance_pr_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.monitoring_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "tag_governance_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.tag_governance_azp.identity[0].principal_id
}

resource "azurerm_role_assignment" "tag_governance_pr" {
  scope                = var.mgmt-anfcorp-prod
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.tag_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.private_dns_governance_azp.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cus_private_dns_governance_azp.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_pr" {
  scope                = var.mgmt-anfcorp-prod
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_pr" {
  scope                = var.mgmt-anfcorp-prod
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cus_private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_pr_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_pr_azp" {
  scope                = var.mgmt-anfcorp-azp
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cus_private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "allowed_locations_eur" {
  scope                = var.mgmt-anfcorp-we-prod
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.allowed_locations_eur.identity[0].principal_id
}

resource "azurerm_role_assignment" "defender" {
  for_each = toset(local.defender_governance_perms)

  scope = var.mgmt-anfcorp-root
  role_definition_name = each.value
  principal_id = azurerm_management_group_policy_assignment.defender_governance_root.identity[0].principal_id
}