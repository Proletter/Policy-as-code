# AzureRM Policy Assignments Nonpoc

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
| [azurerm_management_group_policy_assignment.allowed-sed-vm-sku](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy Assignment for allowed-sed-vm-sku definition. |
| [azurerm_management_group_policy_assignment.allowed_locations_eur](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Locations where pocuction resources can be deployed for europe regions. |
| [azurerm_management_group_policy_assignment.allowed_locations_eus2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Locations where pocuction resources can be deployed for EUS2/CUS paired regions. |
| [azurerm_management_group_policy_assignment.allowed_locations_seas](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Locations where pocuction resources can be deployed for seas regions. |
| [azurerm_management_group_policy_assignment.b2c-connection_anfcorp-root](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for denying creation of Azure B2C connections. |
| [azurerm_management_group_policy_assignment.cs-mgmt-resource-lock_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Management Resource Lock initiative to management group. |
| [azurerm_management_group_policy_assignment.cus_private_dns_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Private DNS initiative to management group. |
| [azurerm_management_group_policy_assignment.cus_private_dns_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Private DNS initiative to management group. |
| [azurerm_management_group_policy_assignment.defender_governance_root](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Defender Governance initiative to anfcorp-root. |
| [azurerm_management_group_policy_assignment.monitoring_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Monitoring Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.monitoring_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Monitoring Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.network_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Network Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.network_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Network Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.private_dns_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Private DNS initiative to management group. |
| [azurerm_management_group_policy_assignment.private_dns_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Private DNS initiative to management group. |
| [azurerm_management_group_policy_assignment.routetables-req-def-fw_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for route table internet routing via firewall requirement poc. |
| [azurerm_management_group_policy_assignment.routetables-req-def-route_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment to check for route table default route requirement poc. |
| [azurerm_management_group_policy_assignment.sql-audit_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Auditing is not enabled. |
| [azurerm_management_group_policy_assignment.sql-audit_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Auditing is not enabled. |
| [azurerm_management_group_policy_assignment.sql_tde_encryption_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for SQL TDE Encryption poc. |
| [azurerm_management_group_policy_assignment.sql_tde_encryption_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for SQL TDE Encryption poc. |
| [azurerm_management_group_policy_assignment.sqldb_privendpoint_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Databses have a private endpoint. |
| [azurerm_management_group_policy_assignment.sqldb_publicnetwork_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if SQL Databses have public network access. |
| [azurerm_management_group_policy_assignment.storage_account_https_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage Account Secure Transfer using HTTPS poc. |
| [azurerm_management_group_policy_assignment.storage_account_https_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage Account Secure Transfer using HTTPS poc. |
| [azurerm_management_group_policy_assignment.storageaccount-name](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy Assignment for storage account naming definition. |
| [azurerm_management_group_policy_assignment.storageaccount_infrastructure_encryption_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage account Infrastructure Encryption poc. |
| [azurerm_management_group_policy_assignment.storageaccount_infrastructure_encryption_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage account Infrastructure Encryption poc. |
| [azurerm_management_group_policy_assignment.storageaccount_public_access_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage account public access (audit) poc. |
| [azurerm_management_group_policy_assignment.storageaccount_public_access_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Storage account public access (audit) poc. |
| [azurerm_management_group_policy_assignment.subnet-nsg_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if a subnet has an NSG associated. |
| [azurerm_management_group_policy_assignment.subnet-nsg_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing if a subnet has an NSG associated. |
| [azurerm_management_group_policy_assignment.subnets-require-routetable_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for Subnet route table requirement poc. |
| [azurerm_management_group_policy_assignment.tag_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Tag Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.tag_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Assignment of the Tag Governance initiative to subscription. |
| [azurerm_management_group_policy_assignment.vm_naming_convention_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for enforcing virtual machine naming convention. |
| [azurerm_management_group_policy_assignment.vnet_peering_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for vnet peerings poc. |
| [azurerm_management_group_policy_assignment.waf_enabled_appgateway_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF enablement on Application Gateway poc. |
| [azurerm_management_group_policy_assignment.waf_enabled_appgateway_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF enablement on Application Gateway poc. |
| [azurerm_management_group_policy_assignment.waf_enabled_frontdoor_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF enablement on Front Door service poc. |
| [azurerm_management_group_policy_assignment.waf_enabled_frontdoor_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF enablement on Front Door service poc. |
| [azurerm_management_group_policy_assignment.waf_mode_appgateway_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF mode on Application Gateway poc. |
| [azurerm_management_group_policy_assignment.waf_mode_appgateway_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF mode on Application Gateway poc. |
| [azurerm_management_group_policy_assignment.waf_mode_frontdoor_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF mode on Front Door service poc. |
| [azurerm_management_group_policy_assignment.waf_mode_frontdoor_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource | Policy assignment for auditing WAF mode on Front Door service poc. |

|Policy exemptions --> `exemptions.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_resource_policy_exemption.sqldb_privateendpoint_poc-a365-waiver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_policy_exemption) | resource | Policy waiver for if a SQL DB should have a private endpoint. |
| [azurerm_resource_policy_exemption.sqldb_publicnetwork_poc-a365-waiver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_policy_exemption) | resource | Policy waiver for if a SQL DB should have public network access disabled. |

|Role assignments --> `r_role_assignments.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_role_assignment.allowed_locations_eur](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for allowed locations. |
| [azurerm_role_assignment.monitoring_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for monitoring governance poc. |
| [azurerm_role_assignment.monitoring_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for monitoring governance poc. |
| [azurerm_role_assignment.monitoring_governance_pr_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for monitoring governance poc poc. |
| [azurerm_role_assignment.pdns_config_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS poc. |
| [azurerm_role_assignment.pdns_config_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS poc. |
| [azurerm_role_assignment.pdns_config_pr_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |Contributor role assignment for PDNS poc poc.  |
| [azurerm_role_assignment.pdnscus_config_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS centralus poc. |
| [azurerm_role_assignment.pdnscus_config_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS centralus poc. |
| [azurerm_role_assignment.pdnscus_config_pr_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for PDNS centralus poc poc. |
| [azurerm_role_assignment.tag_governance_poc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for tag governance. |
| [azurerm_role_assignment.tag_governance_pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource | Contributor role assignment for tag governance. |

|Data calls --> `variables.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source | Data call to current subscription. |

# Terraform input variables (variables.tf)

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_prefix"></a> [custom\_prefix](#input\_custom\_prefix) | Prefix for custom policy assignments | `string` | `"ANF"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location for East US 2 assignments | `string` | `"East US 2"` | no |
| <a name="input_location-eur"></a> [location-eur](#input\_location-eur) | Location for West Europe assignments | `string` | `"West Europe"` | no |
| <a name="input_location-seas"></a> [location-seas](#input\_location-seas) | Location for Southeast Asia assignments | `string` | `"Southeast Asia"` | no |
| <a name="input_mgmt-anfcorp-poc"></a> [mgmt-anfcorp-poc](#input\_mgmt-anfcorp-poc) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-poc"` | no |
| <a name="input_mgmt-anfcorp-eus2-poc"></a> [mgmt-anfcorp-eus2-poc](#input\_mgmt-anfcorp-eus2-poc) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-eus2-poc"` | no |
| <a name="input_mgmt-anfcorp-nonpoc"></a> [mgmt-anfcorp-nonpoc](#input\_mgmt-anfcorp-nonpoc) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-nonpoc"` | no |
| <a name="input_mgmt-anfcorp-poc"></a> [mgmt-anfcorp-poc](#input\_mgmt-anfcorp-poc) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-poc"` | no |
| <a name="input_mgmt-anfcorp-root"></a> [mgmt-anfcorp-root](#input\_mgmt-anfcorp-root) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp"` | no |
| <a name="input_mgmt-anfcorp-seas"></a> [mgmt-anfcorp-seas](#input\_mgmt-anfcorp-seas) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-seas"` | no |
| <a name="input_mgmt-anfcorp-we-poc"></a> [mgmt-anfcorp-we-poc](#input\_mgmt-anfcorp-we-poc) | Management Group where definition is stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp-ne-poc"` | no |
| <a name="input_sub-anfcorp-seas-pr"></a> [sub-anfcorp-seas-pr](#input\_sub-anfcorp-seas-pr) | Subscription ID for anfcorp-seas-pr | `string` | `"/subscriptions/339bbe89-0c57-4df1-8595-718f8f51d765"` | no |

# Terraform output variables (outputs.tf)

| Name | Description |
|------|-------------|
| <a name="output_monitoring_governance_assignment_id_poc"></a> [monitoring\_governance\_assignment\_id\_poc](#output\_monitoring\_governance\_assignment\_id\_poc) | The policy assignment id for monitoring\_governance |
| <a name="output_monitoring_governance_assignment_id_poc"></a> [monitoring\_governance\_assignment\_id\_pr](#output\_monitoring\_governance\_assignment\_id\_pr) | The policy assignment id for monitoring\_governance |
| <a name="output_monitoring_governance_assignment_identity_poc"></a> [monitoring\_governance\_assignment\_identity\_poc](#output\_monitoring\_governance\_assignment\_identity\_poc) | The policy assignment identity for monitoring\_governance |
| <a name="output_monitoring_governance_assignment_identity_poc"></a> [monitoring\_governance\_assignment\_identity\_pr](#output\_monitoring\_governance\_assignment\_identity\_pr) | The policy assignment identity for monitoring\_governance |
| <a name="output_network_governance_assignment_id_poc"></a> [network\_governance\_assignment\_id\_poc](#output\_network\_governance\_assignment\_id\_poc) | The policy assignment id for monitoring\_governance |
| <a name="output_network_governance_assignment_id_poc"></a> [network\_governance\_assignment\_id\_pr](#output\_network\_governance\_assignment\_id\_pr) | The policy assignment id for monitoring\_governance |
| <a name="output_network_governance_assignment_identity_poc"></a> [network\_governance\_assignment\_identity\_poc](#output\_network\_governance\_assignment\_identity\_poc) | The policy assignment identity for monitoring\_governance |
| <a name="output_network_governance_assignment_identity_poc"></a> [network\_governance\_assignment\_identity\_pr](#output\_network\_governance\_assignment\_identity\_pr) | The policy assignment identity for monitoring\_governance |
| <a name="output_tag_governance_assignment_id_poc"></a> [tag\_governance\_assignment\_id\_pr](#output\_tag\_governance\_assignment\_id\_pr) | The policy assignment id for monitoring\_governance |
| <a name="output_tag_governance_assignment_identity_poc"></a> [tag\_governance\_assignment\_identity\_pr](#output\_tag\_governance\_assignment\_identity\_pr) | The policy assignment identity for monitoring\_governance |