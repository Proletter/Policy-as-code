resource "azurerm_role_assignment" "cost_center_tag_governance_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cost_center_tag_governance_poc.identity[0].principal_id
}

resource "azurerm_role_assignment" "allowed_locations_eur" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.allowed_locations_eur.identity[0].principal_id
}

/*
resource "azurerm_role_assignment" "monitoring_governance_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.monitoring_governance_poc.identity[0].principal_id
}

resource "azurerm_role_assignment" "monitoring_governance_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.monitoring_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "monitoring_governance_pr_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.monitoring_governance_pr.identity[0].principal_id
}
resource "azurerm_role_assignment" "pdns_config_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.private_dns_governance_poc.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cus_private_dns_governance_poc.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cus_private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdns_config_pr_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.private_dns_governance_pr.identity[0].principal_id
}

resource "azurerm_role_assignment" "pdnscus_config_pr_poc" {
  scope                = var.mgmt-anfcorp-poc
  role_definition_name = "Contributor"
  principal_id         = azurerm_management_group_policy_assignment.cus_private_dns_governance_pr.identity[0].principal_id
}
*/


