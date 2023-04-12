# Commenting out these waivers as the servers are having work done currently DBE-1349
/* 
resource "azurerm_resource_policy_exemption" "sqldb_privateendpoint_prod-a365-waiver" {
  name                 = "sqldb_privateendpoint_pr_a365-waiver"
  display_name         = "${var.custom_prefix} Policy waiver for SQL DB private endpoint"
  description          = "Policy waiver for if a SQL DB should have a private endpoint"
  resource_id          = "/subscriptions/c046d6e3-823d-425d-8064-993d7907d68a/resourcegroups/dbe-a365-sql-pr/providers/microsoft.sql/servers/a365prd"
  policy_assignment_id = azurerm_management_group_policy_assignment.sqldb_privendpoint_prod.id
  exemption_category   = "Waiver"
}

resource "azurerm_resource_policy_exemption" "sqldb_publicnetwork_prod-a365-waiver" {
  name                 = "sqldb_publicnetwork_pr_a365-waiver"
  display_name         = "${var.custom_prefix} Policy waiver for SQL DB public network access"
  description          = "Policy waiver for if a SQL DB should have public network access disabled"
  resource_id          = "/subscriptions/c046d6e3-823d-425d-8064-993d7907d68a/resourcegroups/dbe-a365-sql-pr/providers/microsoft.sql/servers/a365prd"
  policy_assignment_id = azurerm_management_group_policy_assignment.sqldb_publicnetwork_prod.id
  exemption_category   = "Waiver"
}
*/