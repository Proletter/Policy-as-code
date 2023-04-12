# AzureRM Policy Assignments NonProd

Based on the Azure Policy Assignments code from Jesse Loudon
* GitHub: [@JesseLoudon](https://github.com/jesseloudon)

Learning resources:

* [https://www.terraform.io/docs/providers/azurerm/r/policy_assignment.html](https://www.terraform.io/docs/providers/azurerm/r/policy_assignment.html)
* [https://docs.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)

## Terraform configuration files
* `exemptions.tf`
* `main.tf`
* `outputs.tf`
* `r_role-assignments.tf`
* `variables.tf`

# Terraform resources (main.tf ,exemptions.tf ,r_role_assignments.tf)
|Policy assignments --> `main.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_management_group_policy_assignment.allowed_locations_eur](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Locations where production resources can be deployed for EUS2/CUS paired regions. (North America) |
| [azurerm_management_group_policy_assignment.allowed_locations_eus2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Locations where production resources can be deployed for WEU/NEU paired regions. (Europe) |
| [azurerm_management_group_policy_assignment.cs-mgmt-resource-lock_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Management Resource Lock initiative to management group. |
| [azurerm_management_group_policy_assignment.cus_private_dns_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Monitoring Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.monitoring_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Monitoring Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.netwatch_create_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Creates Network Watcher RGs where there are none |
| [azurerm_management_group_policy_assignment.network_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Network Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.private_dns_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Monitoring Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.routetables-req-def-fw_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for route table internet routing via firewall requirement NonProd. |
| [azurerm_management_group_policy_assignment.routetables-req-def-route_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment to check for route table default route requirement NonProd. |
| [azurerm_management_group_policy_assignment.sql-audit_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Auditing is not enabled. |
| [azurerm_management_group_policy_assignment.sql_tde_encryption_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for SQL TDE Encryption NonProd. |
| [azurerm_management_group_policy_assignment.sqldb_privateendpoint_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Databses have a private endpoint. |
| [azurerm_management_group_policy_assignment.sqldb_publicnetwork_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Databses have public network access. |
| [azurerm_management_group_policy_assignment.storage_account_https_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage Account Secure Transfer using HTTPS NonProd. |
| [azurerm_management_group_policy_assignment.storageaccount_infrastructure_encryption_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage account Infrastructure Encryption NonProd. |
| [azurerm_management_group_policy_assignment.storageaccount_public_access_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage account public access (audit) NonProd. |
| [azurerm_management_group_policy_assignment.subnet-nsg_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if a subnet has an NSG associated. |
| [azurerm_management_group_policy_assignment.subnets-require-routetable_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Subnet route table requirement NonProd. |
| [azurerm_management_group_policy_assignment.tag_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Tag Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.vm_naming_convention_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for enforcing virtual machine naming convention. |
| [azurerm_management_group_policy_assignment.vnet_peering_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for vnet peerings NonProd. |
| [azurerm_management_group_policy_assignment.waf_enabled_appgateway_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF enablement on Application Gateway NonProd. |
| [azurerm_management_group_policy_assignment.waf_enabled_frontdoor_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF enablement on Front Door service NonProd. |
| [azurerm_management_group_policy_assignment.waf_mode_appgateway_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF mode on Application Gateway NonProd. |
| [azurerm_management_group_policy_assignment.waf_mode_frontdoor_nonprod](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF mode on Front Door service NonProd. |


|Policy exemptions --> `exemptions.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_resource_policy_exemption.sqldb_privateendpoint_np-a365qa-waiver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_policy_exemption) | resource | Policy waiver for if a SQL DB should have a private endpoint. |
| [azurerm_resource_policy_exemption.sqldb_publicnetwork_np-a365qa-waiver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_policy_exemption) | resource | Policy waiver for if a SQL DB should have public network access disabled. |


|Role assignments --> `r_role_assignments.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_role_assignment.cuspdns_config_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for CentralUS PDNS. |
| [azurerm_role_assignment.monitoring_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for monitoring governance NonProd. |
| [azurerm_role_assignment.monitoring_governance_np_azp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for monitoring governance Prod. |
| [azurerm_role_assignment.pdns_config_azp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS. |
| [azurerm_role_assignment.pdns_config_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS.  |
| [azurerm_role_assignment.pdnscus_config_azp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for CentralUS PDNS. |
| [azurerm_role_assignment.tag_governance_np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for tag governance. |


|Data calls --> `variables.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source | Data call to current subscription. |

# Terraform input variables (variables.tf)

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_prefix"></a> [custom\_prefix](#input\_custom\_prefix) | Prefix for custom policy assignments | `string` | `"ANF"`  | no |
| <a name="input_location"></a> [location](#input\_location) | Location for East US 2 assignments | `string` | `"East US 2"`  | no |
| <a name="input_location-eur"></a> [location-eur](#input\_location-eur) | Location for West Europe assignments | `string` | `"West Europe"`  | no |
| <a name="input_location-seas"></a> [location-seas](#input\_location-seas) | Location for Southeast Asia assignments | `string` | `"Southeast Asia"`  | no |
| <a name="input_mgmt-anfcorp-azp"></a> [mgmt-anfcorp-azp](#input\_mgmt-anfcorp-azp) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-azp"`  | no |
| <a name="input_mgmt-anfcorp-eus2-nonprod"></a> [mgmt-anfcorp-eus2-nonprod](#input\_mgmt-anfcorp-eus2-nonprod) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-eus2-nonprod"` | no |
| <a name="input_mgmt-anfcorp-nonprod"></a> [mgmt-anfcorp-nonprod](#input\_mgmt-anfcorp-nonprod) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-nonprod"` | no |
| <a name="input_mgmt-anfcorp-poc"></a> [mgmt-anfcorp-poc](#input\_mgmt-anfcorp-poc) | Management group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-poc"`  | no |
| <a name="input_mgmt-anfcorp-sandbox"></a> [mgmt-anfcorp-sandbox](#input\_mgmt-anfcorp-sandbox) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-sandbox"` | no |
| <a name="input_mgmt-anfcorp-seas"></a> [mgmt-anfcorp-seas](#input\_mgmt-anfcorp-seas) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-seas"`  | no |
| <a name="input_mgmt-anfcorp-we-nonprod"></a> [mgmt-anfcorp-we-nonprod](#input\_mgmt-anfcorp-we-nonprod) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-ne-nonprod"`  | no |
| <a name="input_sub-anfcorp-seas-qa"></a> [sub-anfcorp-seas-qa](#input\_sub-anfcorp-seas-qa) | Subscription ID for anfcorp-seas-qa | `string` | `"/subscriptions/5ed0f852-ff10-43d7-9589-ec59bf4e228c"`  | no |

# Terraform output variables (outputs.tf)
| Name | Description |
|------|-------------|
| <a name="output_monitoring_governance_assignment_id_np"></a> [monitoring\_governance\_assignment\_id\_np](#output\_monitoring\_governance\_assignment\_id\_np) | The policy assignment id for monitoring\_governance |
| <a name="output_monitoring_governance_assignment_identity_np"></a> [monitoring\_governance\_assignment\_identity\_np](#output\_monitoring\_governance\_assignment\_identity\_np) | The policy assignment identity for monitoring\_governance |
| <a name="output_network_governance_assignment_id_np"></a> [network\_governance\_assignment\_id\_np](#output\_network\_governance\_assignment\_id\_np) | The policy assignment id for monitoring\_governance |
| <a name="output_network_governance_assignment_identity_np"></a> [network\_governance\_assignment\_identity\_np](#output\_network\_governance\_assignment\_identity\_np) | The policy assignment identity for monitoring\_governance |
| <a name="output_tag_governance_assignment_id_np"></a> [tag\_governance\_assignment\_id\_np](#output\_tag\_governance\_assignment\_id\_np) | The policy assignment id for monitoring\_governance |
| <a name="output_tag_governance_assignment_identity_np"></a> [tag\_governance\_assignment\_identity\_np](#output\_tag\_governance\_assignment\_identity\_np) | The policy assignment identity for monitoring\_governance |