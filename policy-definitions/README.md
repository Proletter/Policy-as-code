# AzureRM Policy Definitions

Based on the Azure Policy Assignments code from Jesse Loudon
* GitHub: [@JesseLoudon](https://github.com/jesseloudon)

Learning resources:

* [https://www.terraform.io/docs/providers/azurerm/r/policy_assignment.html](https://www.terraform.io/docs/providers/azurerm/r/policy_assignment.html)
* [https://docs.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)

## Terraform child module files
* Data Calls
  * `data_calls.tf`
* PolicyDefinitions
  * `diag_cus.tf`
  * `diag_eus2.tf`
  * `diag_law_global.tf`
  * `diag_neu.tf`
  * `diag_weu.tf`
  * `r_acr.tf`
  * `r_activity_logs.tf`
  * `r_allowed-locations.tf`
  * `r_allowed-resource-types.tf`
  * `r_allowed-sed-vm-sku.tf`
  * `r_allowed-storageaccount-name.tf`
  * `r_deploy_netwatch.tf`
  * `r_privatedns_policy.tf`
  * `r_resource-b2ctenant.tf`
  * `r_resource-locks.tf`
  * `r_resource-locks-guardrails.tf`
  * `r_route_table.tf`
  * `r_storage-accounts.tf`
  * `r_subnet-audit.tf`
  * `r_subnet-nsg.tf`
  * `r_tagging.tf`
  * `r_vm-naming-convention.tf`
* PolicySetDefinitions
  * `policyset-definitions.tf`
* Inputs
  * `locals.tf`
  * `variables.tf`
* Outputs
  * `outputs.tf`

# Terraform resources

|Data Calls --> `data_calls.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.anf-sec-vnet-peering](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "ANF SEC DENY - VNET Peering" policy definition. |
| [azurerm_policy_definition.ddos-vnet-enable](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Virtual networks should be protected by Azure DDoS Protection Standard" policy definition. |
| [azurerm_policy_definition.sql-auditing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Auditing on SQL server should be enabled" policy definition. |
| [azurerm_policy_definition.sql-db-private-endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Private endpoint connections on Azure SQL Database should be enabled" policy definition. |
| [azurerm_policy_definition.sql-db-public-network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Public network access on Azure SQL Database should be disabled" policy definition. |
| [azurerm_policy_definition.sql-tde-encryption](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Transparent Data Encryption on SQL databases should be enabled" policy definition. |
| [azurerm_policy_definition.storage-account-https](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Secure transfer to storage accounts should be enabled" policy definition. |
| [azurerm_policy_definition.storage-account-infrastructure-encryption](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Storage accounts should have infrastructure encryption" policy definition. |
| [azurerm_policy_definition.storage-account-public-access](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "[Preview]: Storage account public access should be disallowed" policy definition. |
| [azurerm_policy_definition.waf-enabled-appgateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Web Application Firewall (WAF) should be enabled for Application Gateway" policy definition. |
| [azurerm_policy_definition.waf-enabled-frontdoor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service" policy definition. |
| [azurerm_policy_definition.waf-mode-appgateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Web Application Firewall (WAF) should use the specified mode for Application Gateway" policy definition. |
| [azurerm_policy_definition.waf-mode-frontdoor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/policy_definition) | data source | Data call to "Azure Web Application Firewall should be enabled for Azure Front Door entry-points" policy definition. |

|Policy definitions --> `diag_cus.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.diag-eh-cus](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys CentralUS Event Hub Diagnostics Settings |

|Policy definitions --> `diag_eus2.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.diag-eh-eus2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys EastUS Event Hub Diagnostics Settings |

|Policy definitions --> `diag_neu.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.diag-eh-neu](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys NorthEurope Event Hub Diagnostics Settings |

|Policy definitions --> `diag_weu.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.diag-eh-weu](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys WestEurope Event Hub Diagnostics Settings |

|Policy definitions --> `diag_law_global.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.diag-law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys resource diagnostic settings to Log Analytics Workspace |

|Policy definitions --> `r_acr.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.az-acr-diag-eh](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys Az acr Event Hub diagnostics settings |
| [azurerm_policy_definition.az-acr-diag-law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys Az acr Log Analytics Workspace diagnostic settings |

|Policy definitions --> `r_activity_logs.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.enable_all_activity_logs_eventhub_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enables log analytics logging for all activity logs at subscription level |
| [azurerm_policy_definition.enable_all_activity_logs_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enables log analytics logging for all activity logs at subscription level |

|Policy definitions --> `r_allowed-locations.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.eur-allowed-resource-locations](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Allowed resource locations for Europe subs |
| [azurerm_policy_definition.eus2-allowed-resource-locations](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Allowed resource locations for EUS2 subs |
| [azurerm_policy_definition.seas-allowed-resource-locations](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Allowed resource locations for SEAS subs |

|Policy definitions --> `r_allowed-resource-types.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.azp-allowed-resource-types](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Allowed resource types |

|Policy definitions --> `r_allowed-sed-vm-sku.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.allowed-sed-vm-sku](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Allowed VM SKUs for SED deployments using IaaS module |

|Policy definitions --> `r_allowed-storageaccount-name.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.storageaccount-name](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Allowed storage account names in SEAS subs |

|Policy definitions --> `r_deploy_netwatch.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.deploy-netwatch-rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Ensures NetwatchRG is deployed to all subscriptions |

|Policy definitions --> `r_privatedns_policy.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.private_dns_zone_global](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys global Private DNS Auto Configuration |
| [azurerm_policy_definition.private_dns_zone_regional](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys regional Private DNS Auto Configuration |

|Policy definitions --> `r_resource-b2ctenant.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.b2c-connection](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deny ability to create Azure B2C connection |

|Policy definitions --> `r_resource-locks-guardrails.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.resource-lock-guardrails](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces resource locks on AnF management resources |

|Policy definitions --> `r_resource-locks.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.resource-lock-def](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces resource locks on AnF management resources |

|Policy definitions --> `r_route_table.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.route-table-default-route-def](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Audit or Deny default route not pointing to regional firewall on AnF resources |
| [azurerm_policy_definition.route-table-no-default-route-def](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Audit for existence of default route on AnF route tables |

|Policy definitions --> `r_storage-accounts.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.az-storage-blob-diag-eh](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys Az Blob Storage Event Hub diagnostics Settings |
| [azurerm_policy_definition.az-storage-blob-diag-law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Az Blob Storage to Log Analytics Workspace |
| [azurerm_policy_definition.az-storage-diag-eh](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys Az Storage Event Hub diagnostics Settings |
| [azurerm_policy_definition.az-storage-diag-law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Az Storage to Log Analytics Workspace |
| [azurerm_policy_definition.az-storage-v2-diag-eh](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Deploys Az Storage V2 Event Hub diagnostics Settings |
| [azurerm_policy_definition.az-storage-v2-diag-law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Az Storage V2 to Log Analytics Workspace |
| [azurerm_policy_definition.storage-protection](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Audit storage accounts with specified tags not using redundant storage type |

|Policy definitions --> `r_subnet-audit.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.subnet-route-table-required](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Requires an associated Route Table for Subnets |

|Policy definitions --> `r_subnet-nsg.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.subnet-nsg-policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Subnets should have an associated NSG. |

|Policy definitions --> `r_tagging.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.require-tag-rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Requires the mandatory tag key when any resource group missing this tag is created or updated. |
| [azurerm_policy_definition.inherit-tag-from-rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Adds the specified mandatory tag with its value from the parent resource group when any resource missing this tag is created or updated. |
| [azurerm_policy_definition.require-tag-iaas](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Requires the mandatory tag key when any managed iaas VM missing this tag is created or updated. |
| [azurerm_policy_definition.require-tag-values-appowner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces the allowable values for the tag anf-app_owner |
| [azurerm_policy_definition.require-tag-values-costcenter](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces the allowable values for the tag anf-cost_center |
| [azurerm_policy_definition.require-tag-values-crit](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Encorces the allowable values for the tag anf-business_criticality |
| [azurerm_policy_definition.require-tag-values-env](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces the allowable values for the tag anf-environment |

|Policy definitions --> `r_vm-naming-convention.tf`| | |
|------|------|------|
| Name | Type | Info |
| [azurerm_policy_definition.vm-naming-convention-np](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces the naming convention for virtual machines nonprod |
| [azurerm_policy_definition.vm-naming-convention-pr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource | Enforces the naming convention for virtual machines prod |

|Policyset definitions --> `policyset-definitions.tf`| | |
| [azurerm_policy_set_definition.defender_governance](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource |
| [azurerm_policy_set_definition.monitoring_governance](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource | Contains common Monitoring Governance policies
| [azurerm_policy_set_definition.network_governance](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource | Contains common Network policies
| [azurerm_policy_set_definition.private_dns_governance](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource | Contains policies for PDNS deployment
| [azurerm_policy_set_definition.private_dns_governance_cus](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource | Contains policies for PDNS deployment
| [azurerm_policy_set_definition.sql-vulnerability-assessments](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource |
| [azurerm_policy_set_definition.tag_governance](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition) | resource | Contains common Tag Governance policies


# Terraform input variables (variables.tf)

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_diag"></a> [diag](#input\_diag) | List of maps for access policies needed | <pre>list(object({<br>    name    = string<br>    type    = string<br>    profile = string<br>    }<br>    )<br>  )</pre> | n/a | yes |
| <a name="input_allowed-resource-location-azp"></a> [allowed-resource-location-azp](#input\_allowed-resource-location-azp) | List of allowed locations for EUS2 and paired region | `list(any)` | <pre>[<br>  "East US 2",<br>  "Central US",<br>  "Southeast Asia"<br>]</pre> | no |
| <a name="input_allowed-resource-location-eur"></a> [allowed-resource-location-eur](#input\_allowed-resource-location-eur) | List of allowed locations for West Europe and paired region | `list(any)` | <pre>[<br>  "West Europe",<br>  "westeurope",<br>  "North Europe",<br>  "northeurope"<br>]</pre> | no |
| <a name="input_allowed-resource-location-eus2"></a> [allowed-resource-location-eus2](#input\_allowed-resource-location-eus2) | List of allowed locations for EUS2 and paired region | `list(any)` | <pre>[<br>  "East US 2",<br>  "Central US"<br>]</pre> | no |
| <a name="input_allowed-resource-location-seas"></a> [allowed-resource-location-seas](#input\_allowed-resource-location-seas) | List of allowed locations for seas region | `list(any)` | <pre>[<br>  "Southeast Asia",<br>  "southeastasia"<br>]</pre> | no |
| <a name="input_allowed-resource-types"></a> [allowed-resource-types](#input\_allowed-resource-types) | List of allowed resource types | `list(string)` | Default value too long, refer to variables.tf for value | no |
| <a name="input_allowed-vm-sku-sed"></a> [allowed-vm-sku-sed](#input\_allowed-vm-sku-sed) | List of allowed VM SKUs for SED | `list(string)` | Default value too long, refer to variables.tf for value | no |
| <a name="input_cs-mgmt-lock-tag"></a> [cs-mgmt-lock-tag](#input\_cs-mgmt-lock-tag) | Tag key for policy to set resource locks on management resources (Azure Guardrails) | `string` | `"mgmt-lock-required"` | no |
| <a name="input_cs-mgmt-lock-tag-value"></a> [cs-mgmt-lock-tag-value](#input\_cs-mgmt-lock-tag-value) | Tag value for policy to set resource locks on management resources (Azure Guardrails) | `string` | `"yes"` | no |
| <a name="input_custom_prefix"></a> [custom\_prefix](#input\_custom\_prefix) | Prefix for custom policy definitions | `string` | `"ANF"` | no |
| <a name="input_eventhub_regions"></a> [eventhub\_regions](#input\_eventhub\_regions) | Map of regions and their respective Event Hub information for dynamically creating diagnostic policies | <pre>map(object(<br>    {<br>      eh_id    = string<br>      eh_name  = string<br>      region   = string<br>      context1 = string<br>      context2 = string<br>    }<br>  ))</pre> | <pre>{<br>  "cus": {<br>    "context1": "-cus",<br>    "context2": " Central US",<br>    "eh_id": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg-cus/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns-cus/AuthorizationRules/RootManageSharedAccessKey",<br>    "eh_name": "ioa-mgmt-pr-evh-cus",<br>    "region": "Central US"<br>  },<br>  "eus2": {<br>    "context1": "",<br>    "context2": "",<br>    "eh_id": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns/AuthorizationRules/RootManageSharedAccessKey",<br>    "eh_name": "ioa-mgmt-pr-evh-02",<br>    "region": "East US 2"<br>  },<br>  "neu": {<br>    "context1": "-neu",<br>    "context2": " North Europe",<br>    "eh_id": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg-neu/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns-neu/AuthorizationRules/RootManageSharedAccessKey",<br>    "eh_name": "ioa-mgmt-pr-evh-neu",<br>    "region": "North Europe"<br>  },<br>  "weu": {<br>    "context1": "-weu",<br>    "context2": " Central Europe",<br>    "eh_id": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg-weu/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns-weu/AuthorizationRules/RootManageSharedAccessKey",<br>    "eh_name": "ioa-mgmt-pr-evh-weu",<br>    "region": "West Europe"<br>  }<br>}</pre> | no |
| <a name="input_iaas_tag_keys"></a> [iaas\_tag\_keys](#input\_iaas\_tag\_keys) | List of mandatory tags for iaas VMs | `list(any)` | <pre>[<br>  "anf-nbu_policy"<br>]</pre> | no |
| <a name="input_law_regions"></a> [law\_regions](#input\_law\_regions) | Map of regions and their respective LogAnalyticsWorkspace information for dynamically creating diagnostic policies | <pre>map(object(<br>    {<br>      law_id    = string<br>      law_name  = string<br>      region   = string<br>      context1 = string<br>      context2 = string<br>    }<br>  ))</pre> | <pre>{<br>  "cus": {<br>    "context1": "-cus",<br>    "context2": " Central US",<br>    "law_id": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourcegroups/ioa-mgmt-pr-rg-cus/providers/microsoft.operationalinsights/workspaces/ioa-mgmt-pr-law-cus",<br>    "law_name": "ioa-mgmt-pr-law-cus",<br>    "region": "Central US"<br>  },<br>  "eus2": {<br>    "context1": "-eus2",<br>    "context2": " East US 2",<br>    "law_id": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourcegroups/ioa-mgmt-pr-rg/providers/microsoft.operationalinsights/workspaces/ioa-mgmt-pr-law",<br>    "law_name": "ioa-mgmt-pr-law",<br>    "region": "East US 2"<br>  }<br>}</pre> | no |
| <a name="input_locations"></a> [locations](#input\_locations) | Needed for  Diagnostics settings  - add additional regions as more come online | `list(any)` | <pre>[<br>  "East US 2",<br>  "Central US"<br>]</pre> | no |
| <a name="input_mandatory_tag_keys"></a> [mandatory\_tag\_keys](#input\_mandatory\_tag\_keys) | List of mandatory tag keys used by policies 'addTagToRG','inheritTagFromRG','bulkAddTagsToRG','bulkInheritTagsFromRG' | `list(string)` | <pre>[<br>  "anf-cost_center",<br>  "anf-app_owner",<br>  "anf-application",<br>  "anf-region",<br>  "anf-environment",<br>  "anf-business_criticality"<br>]</pre> | no |
| <a name="input_mgmt-grp-def"></a> [mgmt-grp-def](#input\_mgmt-grp-def) | Where all policy defs get stored | `string` | `"/providers/Microsoft.Management/managementGroups/anfcorp"` | no |
| <a name="input_nbu-name-patterns"></a> [nbu-name-patterns](#input\_nbu-name-patterns) | List of prefixes for VM name matching used by policy require nbu tag values | `list(any)` | <pre>[<br>  "sa*",<br>  "su*",<br>  "sw*"<br>]</pre> | no |
| <a name="input_policy_definition_category"></a> [policy\_definition\_category](#input\_policy\_definition\_category) | The category to use for all Policy Definitions | `string` | `"Custom"` | no |
| <a name="input_private_dns_zone_global"></a> [private\_dns\_zone\_global](#input\_private\_dns\_zone\_global) | n/a | `map(string)` | <pre>{<br>  "privatelink.afs.azure.net": "filesync",<br>  "privatelink.agentsvc.azure-automation.net": "agentsvc",<br>  "privatelink.api.azureml.ms": "azureml",<br>  "privatelink.azconfig.io": "appconfig",<br>  "privatelink.azure-automation.net": "automation",<br>  "privatelink.azure-devices.net": "iothub",<br>  "privatelink.azurecr.io": "registry",<br>  "privatelink.azurehdinsight.net": "hdinsights",<br>  "privatelink.azuresynapse.net": "synapsestudio",<br>  "privatelink.azurewebsites.net": "sites",<br>  "privatelink.blob.core.windows.net": "blob",<br>  "privatelink.cassandra.cosmos.azure.com": "cosmocassandra",<br>  "privatelink.centralus.backup.windowsazure.com": "backupcentralus",<br>  "privatelink.centralus.batch.azure.com": "batchcentralus",<br>  "privatelink.cognitiveservices.azure.com": "cognitiveservices",<br>  "privatelink.database.windows.net": "sqlServer",<br>  "privatelink.datafactory.azure.net": "dataFactory",<br>  "privatelink.dev.azuresynapse.net": "synapsedev",<br>  "privatelink.dfs.core.windows.net": "dfs",<br>  "privatelink.digitaltwins.azure.net": "digitaltwins",<br>  "privatelink.documents.azure.com": "cosmosql",<br>  "privatelink.eastus2.backup.windowsazure.com": "backupeastus2",<br>  "privatelink.eastus2.batch.azure.com": "batcheastus2",<br>  "privatelink.eventgrid.azure.net": "eventgrid",<br>  "privatelink.file.core.windows.net": "file",<br>  "privatelink.gremlin.cosmos.azure.com": "cosmogremlin",<br>  "privatelink.guestconfiguration.azure.com": "arcguest",<br>  "privatelink.his.arc.azure.com": "arc",<br>  "privatelink.managedhsm.azure.net": "keyvaulthsm",<br>  "privatelink.mariadb.database.azure.com": "mariadb",<br>  "privatelink.media.azure.net": "mediasvcs",<br>  "privatelink.monitor.azure.com": "monitor",<br>  "privatelink.mysql.database.azure.com": "mysql",<br>  "privatelink.notebooks.azure.net": "notebooks",<br>  "privatelink.ods.opinsights.azure.com": "ods",<br>  "privatelink.oms.opinsights.azure.com": "oms",<br>  "privatelink.postgres.database.azure.com": "postgresql",<br>  "privatelink.purview.azure.com": "purview",<br>  "privatelink.purviewstudio.azure.com": "purviewstudio",<br>  "privatelink.queue.core.windows.net": "queue",<br>  "privatelink.redis.cache.windows.net": "rediscache",<br>  "privatelink.redisenterprise.cache.azure.net": "redisenterprise",<br>  "privatelink.search.windows.net": "search",<br>  "privatelink.service.signalr.net": "signalr",<br>  "privatelink.servicebus.windows.net": "servicebus",<br>  "privatelink.siterecovery.windowsazure.com": "siterecovery",<br>  "privatelink.sql.azuresynapse.net": "synapsesql",<br>  "privatelink.table.core.windows.net": "table",<br>  "privatelink.table.cosmos.azure.com": "cosmostable",<br>  "privatelink.vaultcore.azure.net": "vault",<br>  "privatelink.web.core.windows.net": "web"<br>}</pre> | no |
| <a name="input_private_dns_zone_regional"></a> [private\_dns\_zone\_regional](#input\_private\_dns\_zone\_regional) | n/a | <pre>list(object({<br>    url         = string<br>    subresource = string<br>    region      = string<br>    }<br>    )<br>  )</pre> | <pre>[<br>  {<br>    "region": "eastus2",<br>    "subresource": "management",<br>    "url": "privatelink.eastus2.azmk8s.io"<br>  },<br>  {<br>    "region": "centralus",<br>    "subresource": "management",<br>    "url": "privatelink.centralus.azmk8s.io"<br>  },<br>  {<br>    "region": "northeurope",<br>    "subresource": "management",<br>    "url": "privatelink.northeurope.azmk8s.io"<br>  },<br>  {<br>    "region": "westeurope",<br>    "subresource": "management",<br>    "url": "privatelink.westeurope.azmk8s.io"<br>  }<br>]</pre> | no |
| <a name="input_tag-anf-appowner-excluded-names"></a> [tag-anf-appowner-excluded-names](#input\_tag-anf-appowner-excluded-names) | List of resource names to exclude from the policy 'require-tag-values-appowner' | `list(any)` | <pre>[<br>  "nbu12643760777473669523snap1648944001",<br>  "nbu12643760777473669523snap1648944001_disk_0",<br>  "nbu1265522422795181853snap1654387201",<br>  "nbu1265522422795181853snap1656806401",<br>  "nbu1265522422795181853snap1659225601",<br>  "nbu1265522422795181853snap1659830401",<br>  "nbu15228525825239113892snap1648944001",<br>  "nbu15228525825239113892snap1648944001_disk_0",<br>  "nbu1712311947676223152snap1648944001",<br>  "nbu1712311947676223152snap1648944001_disk_0",<br>  "nbu3277238172519077215snap1635785344",<br>  "nbu3277238172519077215snap1635786146",<br>  "nbu3277238172519077215snap1635790358",<br>  "nbu3277238172519077215snap1635829548",<br>  "nbu3277238172519077215snap1635897601",<br>  "nbu3277238172519077215snap1635984001",<br>  "nbu3277238172519077215snap1635984803",<br>  "nbu3277238172519077215snap1636027463",<br>  "nbu3277238172519077215snap1636070663",<br>  "nbu3277238172519077215snap1636071514",<br>  "nbu3277238172519077215snap1636114965",<br>  "nbu3277238172519077215snap1636115817",<br>  "nbu3277238172519077215snap1636119362",<br>  "nbu3277238172519077215snap1636159268",<br>  "nbu3277238172519077215snap1636160119",<br>  "nbu3277238172519077215snap1636202780",<br>  "nbu3277238172519077215snap1636245980",<br>  "nbu3277238172519077215snap1636246831",<br>  "nbu3277238172519077215snap1636290283",<br>  "nbu3277238172519077215snap1636291135",<br>  "nbu3277238172519077215snap1636334587",<br>  "nbu3277238172519077215snap1636335439",<br>  "nbu3277238172519077215snap1636378878",<br>  "nbu3277238172519077215snap1636379730",<br>  "nbu3277238172519077215snap1636422391",<br>  "nbu3277238172519077215snap1636422391_disk_0",<br>  "nbu543921897051248463snap1648944001"<br>]</pre> | no |
| <a name="input_tag-anf-appowner-values"></a> [tag-anf-appowner-values](#input\_tag-anf-appowner-values) | List of mandatory tag keys used by the policy 'require-tag-values-appowner' | `list(any)` | Default value too long, refer to variables.tf for value | no |
| <a name="input_tag-anf-business-criticality-values"></a> [tag-anf-business-criticality-values](#input\_tag-anf-business-criticality-values) | List of mandatory tag keys used by policy 'require-tags-multiple-values'' | `list(any)` | <pre>[<br>  "low",<br>  "medium",<br>  "high",<br>  "business unit-critical",<br>  "mission-critical"<br>]</pre> | no |
| <a name="input_tag-anf-costcenter-values"></a> [tag-anf-costcenter-values](#input\_tag-anf-costcenter-values) | List of mandatory tag keys used by policy 'require-tag-values-costcenter'' | `list(any)` | <pre>[<br>  "57356-8208",<br>  "57355-8208",<br>  "57352-8208",<br>  "57353-8209",<br>  "57350-8209",<br>  "57361-8207",<br>  "57359-8207",<br>  "57351-8203",<br>  "57358-8200",<br>  "57359-8207",<br>  "57361-8207",<br>  "57353-8208",<br>  "57353-8205",<br>  "57354-8203",<br>  "57360-8206",<br>  "57363-8206",<br>  "57353-8206",<br>  "57358-8200",<br>  "57365-8205",<br>  "57366-8205",<br>  "57364-8205",<br>  "57353-8206",<br>  "57362-8205",<br>  "57357-8205",<br>  "57353-8204"<br>]</pre> | no |
| <a name="input_tag-anf-environment-values"></a> [tag-anf-environment-values](#input\_tag-anf-environment-values) | List of mandatory tag keys used by policy 'require-tag-values-env'' | `list(any)` | <pre>[<br>  "bx",<br>  "cq",<br>  "dm",<br>  "dr",<br>  "dv",<br>  "pp",<br>  "pr",<br>  "qa",<br>  "sb",<br>  "tr",<br>  "ts",<br>  "tu"<br>]</pre> | no |
| <a name="input_tag-anf-storage-account-data-protection-key"></a> [tag-anf-storage-account-data-protection-key](#input\_tag-anf-storage-account-data-protection-key) | Tag used by 'az-st-protection' policy for auditing Storage Account SKU | `string` | `"anf-data-protection"` | no |
| <a name="input_tag-anf-storage-account-data-protection-values"></a> [tag-anf-storage-account-data-protection-values](#input\_tag-anf-storage-account-data-protection-values) | List of mandatory tag keys used by 'az-st-protection' policy for auditing Storage Account SKU | `list(any)` | <pre>[<br>  "yes"<br>]</pre> | no |
| <a name="input_builtin_policies_defender"></a> [builtin\_policies\_defender](#input\_builtin\_policies\_defender) | value | `list(any)` | <pre>[<br>  "Configure Azure Defender for servers to be enabled",<br>  "Configure Azure Defender for App Service to be enabled",<br>  "Configure Azure Defender for Azure SQL database to be enabled",<br>  "Configure Azure Defender for SQL servers on machines to be enabled",<br>  "Configure Azure Defender for open-source relational databases to be enabled",<br>  "Configure Microsoft Defender for Azure Cosmos DB to be enabled",<br>  "Configure Azure Defender for Storage to be enabled",<br>  "Configure Microsoft Defender for Containers to be enabled",<br>  "Configure Azure Defender for Key Vaults to be enabled",<br>  "Configure Azure Defender for Resource Manager to be enabled",<br>  "Configure Azure Defender for DNS to be enabled",<br>  "Deploy Azure Policy Add-on to Azure Kubernetes Service clusters"<br>]</pre> | no |
| <a name="input_builtin_policies_network_governance"></a> [builtin\_policies\_network\_governance](#input\_builtin\_policies\_network\_governance) | List of policy definitions (display names) for the network\_governance policyset | `list(any)` | <pre>[<br>  "Network interfaces should not have public IPs",<br>  "[Deprecated]: App Service should disable public network access"<br>]</pre> | no |


## Terraform output variables (outputs.tf)
| Name | Description |
|------|-------------|
| <a name="output_acr-diag-law_policy_id"></a> [acr-diag-law\_policy\_id](#output\_acr-diag-law\_policy\_id) | The policy definition id for az-storage-diag-law |
| <a name="output_actlog-diag-eus2-eh_policy_id"></a> [actlog-diag-eus2-eh\_policy\_id](#output\_actlog-diag-eus2-eh\_policy\_id) | The policy definition id for Enable All Activity Logs |
| <a name="output_actlog-diag-eus2-law_policy_id"></a> [actlog-diag-eus2-law\_policy\_id](#output\_actlog-diag-eus2-law\_policy\_id) | The policy definition id for Enable All Activity Logs |
| <a name="output_allowed-sed-vm-sku_policy_id"></a> [allowed-sed-vm-sku\_policy\_id](#output\_allowed-sed-vm-sku\_policy\_id) | The policy definition id for allowed SED vm skus |
| <a name="output_az-pdns_policies_global"></a> [az-pdns\_policies\_global](#output\_az-pdns\_policies\_global) | Policy definitions for Private DNS configuration |
| <a name="output_az-pdns_policies_regional"></a> [az-pdns\_policies\_regional](#output\_az-pdns\_policies\_regional) | Policy definitions for Private DNS configuration |
| <a name="output_az-st-protection_policy_id"></a> [az-st-protection\_policy\_id](#output\_az-st-protection\_policy\_id) | The policy definition id for az-st-protection |
| <a name="output_azp-allowed-resource-types_policy_id"></a> [azp-allowed-resource-types\_policy\_id](#output\_azp-allowed-resource-types\_policy\_id) | The policy definition id for azp-allowed-resource-types |
| <a name="output_b2c-connection-policy_id"></a> [b2c-connection-policy\_id](#output\_b2c-connection-policy\_id) | The policy definition id for b2c-connection |
| <a name="output_blob-diag-law_policy_id"></a> [blob-diag-law\_policy\_id](#output\_blob-diag-law\_policy\_id) | The policy definition id for az-storage-blob-diag-law |
| <a name="output_cs-mgmt-resource-lock_policy_id"></a> [cs-mgmt-resource-lock\_policy\_id](#output\_cs-mgmt-resource-lock\_policy\_id) | The policy definition id for resource-lock-guardrails |
| <a name="output_ddos-vnet-enable-policy_id"></a> [ddos-vnet-enable-policy\_id](#output\_ddos-vnet-enable-policy\_id) | The policy definition for the built-in policy for ddos-vnet-enable |
| <a name="output_deploy-netwatch-rg_policy_id"></a> [deploy-netwatch-rg\_policy\_id](#output\_deploy-netwatch-rg\_policy\_id) | The policy definition id for Enable All Activity Logs |
| <a name="output_diag-eh-cus"></a> [diag-eh-cus](#output\_diag-eh-cus) | Policy definitions for Private DNS configuration |
| <a name="output_diag-eh-eus2"></a> [diag-eh-eus2](#output\_diag-eh-eus2) | Policy definitions for Private DNS configuration |
| <a name="output_diag-eh-neu"></a> [diag-eh-neu](#output\_diag-eh-neu) | Policy definitions for Private DNS configuration |
| <a name="output_diag-eh-weu"></a> [diag-eh-weu](#output\_diag-eh-weu) | Policy definitions for Private DNS configuration |
| <a name="output_diag-law"></a> [diag-law](#output\_diag-law) | Policy definitions for Private DNS configuration |
| <a name="output_eur-allowed-resource-locations_policy_id"></a> [eur-allowed-resource-locations\_policy\_id](#output\_eur-allowed-resource-locations\_policy\_id) | The policy definition id for allowed locations |
| <a name="output_eus2-allowed-resource-locations_policy_id"></a> [eus2-allowed-resource-locations\_policy\_id](#output\_eus2-allowed-resource-locations\_policy\_id) | The policy definition id for eus2-allowed-resource-locations |
| <a name="output_ind-resource-lock-def_policy_id"></a> [ind-resource-lock-def\_policy\_id](#output\_ind-resource-lock-def\_policy\_id) | The policy definition id for resource-lock-def |
| <a name="output_inherit-tag-from-rg_policy_id"></a> [inherit-tag-from-rg\_policy\_id](#output\_inherit-tag-from-rg\_policy\_id) | The policy definition id for az-firewall-diag-eh |
| <a name="output_require-tag-iaas_policy_id"></a> [require-tag-iaas\_policy\_id](#output\_require-tag-iaas\_policy\_id) | The policy definition id for require-tag-iaas |
| <a name="output_require-tag-rg_policy_id"></a> [require-tag-rg\_policy\_id](#output\_require-tag-rg\_policy\_id) | The policy definition id for az-firewall-diag-eh |
| <a name="output_require-tag-values-appowner_policy_id"></a> [require-tag-values-appowner\_policy\_id](#output\_require-tag-values-appowner\_policy\_id) | The policy definition id for require-tag-values-appowner |
| <a name="output_require-tag-values-costcenter_policy_id"></a> [require-tag-values-costcenter\_policy\_id](#output\_require-tag-values-costcenter\_policy\_id) | The policy definition id for require-tag-values-costcenter |
| <a name="output_require-tag-values-crit_policy_id"></a> [require-tag-values-crit\_policy\_id](#output\_require-tag-values-crit\_policy\_id) | The policy definition id for az-firewall-diag-eh |
| <a name="output_require-tag-values-env_policy_id"></a> [require-tag-values-env\_policy\_id](#output\_require-tag-values-env\_policy\_id) | The policy definition id for require-tag-values-env |
| <a name="output_routetables-require-default-fw_policy_id"></a> [routetables-require-default-fw\_policy\_id](#output\_routetables-require-default-fw\_policy\_id) | The policy definition id for route-table-default-route-def |
| <a name="output_routetables-require-default-route_policy_id"></a> [routetables-require-default-route\_policy\_id](#output\_routetables-require-default-route\_policy\_id) | The policy definition id for route-table-no-default-route-def |
| <a name="output_seas-allowed-resource-locations_policy_id"></a> [seas-allowed-resource-locations\_policy\_id](#output\_seas-allowed-resource-locations\_policy\_id) | The policy definition id for allowed locations |
| <a name="output_sql-auditing-policy_id"></a> [sql-auditing-policy\_id](#output\_sql-auditing-policy\_id) | The policy definition id for the built-in policy for sql-auditing |
| <a name="output_sql-db-private-endpoint-policy_id"></a> [sql-db-private-endpoint-policy\_id](#output\_sql-db-private-endpoint-policy\_id) | The policy definition id for the built-in policy for sql-db-private-endpoint |
| <a name="output_sql-db-public-network-policy_id"></a> [sql-db-public-network-policy\_id](#output\_sql-db-public-network-policy\_id) | The policy definition id for the built-in policy for sql-db-public-network |
| <a name="output_sql-tde-encryption-policy_id"></a> [sql-tde-encryption-policy\_id](#output\_sql-tde-encryption-policy\_id) | The policy definition id for the built-in policy for sql-tde-encryption |
| <a name="output_storage-account-https-policy_id"></a> [storage-account-https-policy\_id](#output\_storage-account-https-policy\_id) | The policy definition id for the built-in policy for storage account secure transfer via HTTPs |
| <a name="output_storage-account-infrastructure-encryption_policy_id"></a> [storage-account-infrastructure-encryption\_policy\_id](#output\_storage-account-infrastructure-encryption\_policy\_id) | The policy definition id for the built-in policy for storage-account-infrastructure-encryption |
| <a name="output_storage-account-public-access_policy_id"></a> [storage-account-public-access\_policy\_id](#output\_storage-account-public-access\_policy\_id) | The policy definition id for the built-in policy for storage-account-public-access |
| <a name="output_storageaccount-name_policy_id"></a> [storageaccount-name\_policy\_id](#output\_storageaccount-name\_policy\_id) | The policy definition id allowed storage account name |
| <a name="output_subnet-nsg-policy-policy_id"></a> [subnet-nsg-policy-policy\_id](#output\_subnet-nsg-policy-policy\_id) | The policy definition id for subnet-nsg-policy |
| <a name="output_subnets-require-routetable_policy_id"></a> [subnets-require-routetable\_policy\_id](#output\_subnets-require-routetable\_policy\_id) | The policy definition id for require-route-table-subnet |
| <a name="output_v1-diag-law_policy_id"></a> [v1-diag-law\_policy\_id](#output\_v1-diag-law\_policy\_id) | The policy definition id for az-storage-diag-law |
| <a name="output_v2-diag-law_policy_id"></a> [v2-diag-law\_policy\_id](#output\_v2-diag-law\_policy\_id) | The policy definition id for az-storage-v2-diag-law |
| <a name="output_vm-naming-convention-np-policy_id"></a> [vm-naming-convention-np-policy\_id](#output\_vm-naming-convention-np-policy\_id) | The policy definition for vm-naming-convention-np |
| <a name="output_vm-naming-convention-pr-policy_id"></a> [vm-naming-convention-pr-policy\_id](#output\_vm-naming-convention-pr-policy\_id) | The policy definition for vm-naming-convention-pr |
| <a name="output_vnet-peering-policy_id"></a> [vnet-peering-policy\_id](#output\_vnet-peering-policy\_id) | The policy definition id for the AnF Security Vnet peering definition |
| <a name="output_waf-enabled-appgateway-policy_id"></a> [waf-enabled-appgateway-policy\_id](#output\_waf-enabled-appgateway-policy\_id) | The policy definition id for the built-in policy for waf-enabled-appgateway |
| <a name="output_waf-enabled-frontdoor-policy_id"></a> [waf-enabled-frontdoor-policy\_id](#output\_waf-enabled-frontdoor-policy\_id) | The policy definition id for the built-in policy for waf-enabled-frontdoor |
| <a name="output_waf-mode-appgateway-policy_id"></a> [waf-mode-appgateway-policy\_id](#output\_waf-mode-appgateway-policy\_id) | The policy definition id for the built-in policy for waf-mode-appgateway |
| <a name="output_waf-mode-frontdoor-policy_id"></a> [waf-mode-frontdoor-policy\_id](#output\_waf-mode-frontdoor-policy\_id) | The policy definition id for the built-in policy for waf-mode-frontdoor |
| <a name="monitoring_governance_policyset_id"></a> [monitoring\_governance\_policyset\_id](#output\_monitoring\_governance\_policyset\_id) | The policy set definition id for monitoring_governance |
| <a name="tag_governance_policyset_id"></a> [tag\_governance\_policyset\_id](#output\_tag\_governance\_policyset\_id) | The policy set definition id for tag_governance |
| <a name="network_governance_policyset_id"></a> [network\_governance\_policyset\_id](#output\_network\_governance\_policyset\_id) | The policy set definition id for network_governance |
| <a name="dns_governance_policyset_id"></a> [dns\_governance\_policyset\_id](#output\_dns\_governance\_policyset\_id) | The policy set definition id for network_governance |
| <a name="cus_dns_governance_policyset_id"></a> [cus\_dns\_governance\_policyset\_id](#output\_cus\_dns\_governance\_policyset\_id) | The policy set definition id for network_governance |
| <a name="defender_governance_policyset_id"></a> [defender\_governance\_policyset\_id](#output\_defender\_governance\_policyset\_id) | The policy set definition id for defender_governance |
| <a name="sql_vulnerability_assessments_policyset_id"></a> [sql\_vulnerability\_assessments\_policyset\_id](#output\_sql\_vulnerability\_assessments\_policyset\_id) | The policy set definition id for sql vulnerability assessments |