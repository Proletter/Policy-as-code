# Commenting out these waivers as the servers are having work done currently DBE-1349
/* 
resource "azurerm_resource_policy_exemption" "sqldb_privateendpoint_np-a365qa-waiver" {
  name                 = "sqldb_privateendpoint_np-a365qa-waiver"
  display_name         = "${var.custom_prefix} Policy waiver for SQL DB private endpoint"
  description          = "Policy waiver for if a SQL DB should have a private endpoint"
  resource_id          = "/subscriptions/a5f628d6-6a2e-4c2a-ac37-b1a227664b3c/resourcegroups/dbe-a365-sql-nonprod/providers/microsoft.sql/servers/a365qa"
  policy_assignment_id = azurerm_management_group_policy_assignment.sqldb_privateendpoint_np.id
  exemption_category   = "Waiver"
}

resource "azurerm_resource_policy_exemption" "sqldb_publicnetwork_np-a365qa-waiver" {
  name                 = "sqldb_publicnetwork_np-a365qa-waiver"
  display_name         = "${var.custom_prefix} Policy waiver for SQL DB public network access"
  description          = "Policy waiver for if a SQL DB should have public network access disabled"
  resource_id          = "/subscriptions/a5f628d6-6a2e-4c2a-ac37-b1a227664b3c/resourcegroups/dbe-a365-sql-nonprod/providers/microsoft.sql/servers/a365qa"
  policy_assignment_id = azurerm_management_group_policy_assignment.sqldb_publicnetwork_np.id
  exemption_category   = "Waiver"
}
*/