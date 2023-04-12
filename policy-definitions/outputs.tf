output "require-tag-rg_policy_id" {
  value       = local.require_tag_rg_policy_ids
  description = "The policy definition id for az-firewall-diag-eh"
}

output "inherit-tag-from-rg_policy_id" {
  value       = local.inherit_tag_from_rg_policy_ids
  description = "The policy definition id for az-firewall-diag-eh"
}

output "require-costcenter-tag-rg_policy_id" {
  value       = azurerm_policy_definition.require-tag-rg["anf-cost_center"].id
  description = "The policy definition id for require-tag-rg-anf-cost_center"
}

output "require-tag-values-crit_policy_id" {
  value       = azurerm_policy_definition.require-tag-values-crit.id
  description = "The policy definition id for az-firewall-diag-eh"
}

output "require-tag-values-env_policy_id" {
  value       = azurerm_policy_definition.require-tag-values-env.id
  description = "The policy definition id for require-tag-values-env"
}

output "az-st-protection_policy_id" {
  value       = azurerm_policy_definition.storage-protection.id
  description = "The policy definition id for az-st-protection"
}

output "require-tag-values-costcenter_policy_id" {
  value       = azurerm_policy_definition.require-tag-values-costcenter.id
  description = "The policy definition id for require-tag-values-costcenter"
}

//added 12/30/22
output "require-tag-values-expiration-date_policy_id" {
  value       = azurerm_policy_definition.require-tag-values-expiration-date.id
  description = "The policy definition id for require-tag-values-expiration-date"
}

output "require-tag-values-requestor_policy_id" {
  value       = azurerm_policy_definition.require-tag-values-requestor.id
  description = "The policy definition id for require-tag-values-requestor"
}

output "eus2-allowed-resource-locations_policy_id" {
  value       = azurerm_policy_definition.eus2-allowed-resource-locations.id
  description = "The policy definition id for eus2-allowed-resource-locations"
}

output "azp-allowed-resource-types_policy_id" {
  value       = azurerm_policy_definition.azp-allowed-resource-types.id
  description = "The policy definition id for azp-allowed-resource-types"
}

output "ind-resource-lock-def_policy_id" {
  value       = azurerm_policy_definition.resource-lock-def.id
  description = "The policy definition id for resource-lock-def"
}

output "cs-mgmt-resource-lock_policy_id" {
  value       = azurerm_policy_definition.resource-lock-guardrails.id
  description = "The policy definition id for resource-lock-guardrails"
}

output "subnets-require-routetable_policy_id" {
  value       = azurerm_policy_definition.subnet-route-table-required.id
  description = "The policy definition id for require-route-table-subnet"
}

output "routetables-require-default-fw_policy_id" {
  value       = azurerm_policy_definition.route-table-default-route-def.id
  description = "The policy definition id for route-table-default-route-def"
}

output "routetables-require-default-route_policy_id" {
  value       = azurerm_policy_definition.route-table-no-default-route-def.id
  description = "The policy definition id for route-table-no-default-route-def"
}

output "blob-diag-law_policy_id" {
  value       = azurerm_policy_definition.az-storage-blob-diag-law.id
  description = "The policy definition id for az-storage-blob-diag-law"
}

output "v2-diag-law_policy_id" {
  value       = azurerm_policy_definition.az-storage-v2-diag-law.id
  description = "The policy definition id for az-storage-v2-diag-law"
}

output "v1-diag-law_policy_id" {
  value       = azurerm_policy_definition.az-storage-diag-law.id
  description = "The policy definition id for az-storage-diag-law"
}

output "acr-diag-law_policy_id" {
  value       = azurerm_policy_definition.az-acr-diag-law.id
  description = "The policy definition id for az-storage-diag-law"
}

output "az-pdns_policies_global" {
  value       = local.pdns_policy_ids_global
  description = "Policy definitions for Private DNS configuration"
}

output "az-pdns_policies_regional" {
  value       = local.pdns_policy_ids_regional
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-eus2" {
  value       = local.diag_eh_eus2
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-cus" {
  value       = local.diag_eh_cus
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-weu" {
  value       = local.diag_eh_weu
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-neu" {
  value       = local.diag_eh_neu
  description = "Policy definitions for Private DNS configuration"
}

output "diag-law" {
  value       = local.diag_law
  description = "Policy definitions for Private DNS configuration"
}


output "diag-eh-eus2-allmetrics" {
  value       = local.diag_eh_eus2_allmetrics
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-cus-allmetrics" {
  value       = local.diag_eh_cus_allmetrics
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-weu-allmetrics" {
  value       = local.diag_eh_weu_allmetrics
  description = "Policy definitions for Private DNS configuration"
}

output "diag-eh-neu-allmetrics" {
  value       = local.diag_eh_neu_allmetrics
  description = "Policy definitions for Private DNS configuration"
}

output "diag-law-allmetrics" {
  value       = local.diag_law_allmetrics
  description = "Policy definitions for Private DNS configuration"
}

output "require-tag-iaas_policy_id" {
  value       = local.require_tag_iaas_policy_ids
  description = "The policy definition id for require-tag-iaas"
}
output "actlog-diag-eus2-law_policy_id" {
  value       = azurerm_policy_definition.enable_all_activity_logs_policy.id
  description = "The policy definition id for Enable All Activity Logs"
}

output "actlog-diag-eus2-eh_policy_id" {
  value       = azurerm_policy_definition.enable_all_activity_logs_eventhub_policy.id
  description = "The policy definition id for Enable All Activity Logs"
}

output "deploy-netwatch-rg_policy_id" {
  value       = azurerm_policy_definition.deploy-netwatch-rg.id
  description = "The policy definition id for Enable All Activity Logs"
}

output "seas-allowed-resource-locations_policy_id" {
  value       = azurerm_policy_definition.seas-allowed-resource-locations.id
  description = "The policy definition id for allowed locations"
}

output "eur-allowed-resource-locations_policy_id" {
  value       = azurerm_policy_definition.eur-allowed-resource-locations.id
  description = "The policy definition id for allowed locations"
}

output "ea-allowed-resource-locations_policy_id" {
  value       = azurerm_policy_definition.ea-allowed-resource-locations.id
  description = "The policy definition id for allowed locations"
}

output "allowed-sed-vm-sku_policy_id" {
  value       = azurerm_policy_definition.allowed-sed-vm-sku.id
  description = "The policy definition id for allowed SED vm skus"
}

output "storageaccount-name_policy_id" {
  value       = azurerm_policy_definition.storageaccount-name.id
  description = "The policy definition id allowed storage account name"
}

output "require-tag-values-appowner_policy_id" {
  value       = azurerm_policy_definition.require-tag-values-appowner.id
  description = "The policy definition id for require-tag-values-appowner"
}

output "storage-account-public-access_policy_id" {
  value       = data.azurerm_policy_definition.storage-account-public-access.id
  description = "The policy definition id for the built-in policy for storage-account-public-access"
}

output "storage-account-infrastructure-encryption_policy_id" {
  value       = data.azurerm_policy_definition.storage-account-infrastructure-encryption.id
  description = "The policy definition id for the built-in policy for storage-account-infrastructure-encryption"
}

output "vnet-peering-policy_id" {
  value       = data.azurerm_policy_definition.anf-sec-vnet-peering.id
  description = "The policy definition id for the AnF Security Vnet peering definition"
}

output "sql-tde-encryption-policy_id" {
  value       = data.azurerm_policy_definition.sql-tde-encryption.id
  description = "The policy definition id for the built-in policy for sql-tde-encryption"
}

output "storage-account-https-policy_id" {
  value       = data.azurerm_policy_definition.storage-account-https.id
  description = "The policy definition id for the built-in policy for storage account secure transfer via HTTPs"
}

output "waf-enabled-frontdoor-policy_id" {
  value       = data.azurerm_policy_definition.waf-enabled-frontdoor.id
  description = "The policy definition id for the built-in policy for waf-enabled-frontdoor"
}

output "waf-mode-frontdoor-policy_id" {
  value       = data.azurerm_policy_definition.waf-mode-frontdoor.id
  description = "The policy definition id for the built-in policy for waf-mode-frontdoor"
}

output "waf-enabled-appgateway-policy_id" {
  value       = data.azurerm_policy_definition.waf-enabled-appgateway.id
  description = "The policy definition id for the built-in policy for waf-enabled-appgateway"
}

output "waf-mode-appgateway-policy_id" {
  value       = data.azurerm_policy_definition.waf-mode-appgateway.id
  description = "The policy definition id for the built-in policy for waf-mode-appgateway"
}

output "sql-auditing-policy_id" {
  value       = data.azurerm_policy_definition.sql-auditing.id
  description = "The policy definition id for the built-in policy for sql-auditing"
}

output "subnet-nsg-policy-policy_id" {
  value       = azurerm_policy_definition.subnet-nsg-policy.id
  description = "The policy definition id for subnet-nsg-policy"
}

output "b2c-connection-policy_id" {
  value       = azurerm_policy_definition.b2c-connection.id
  description = "The policy definition id for b2c-connection"
}

output "vm-naming-convention-pr-policy_id" {
  value       = azurerm_policy_definition.vm-naming-convention-pr.id
  description = "The policy definition for vm-naming-convention-pr"
}

output "vm-naming-convention-np-policy_id" {
  value       = azurerm_policy_definition.vm-naming-convention-np.id
  description = "The policy definition for vm-naming-convention-np"
}

output "ddos-vnet-enable-policy_id" {
  value       = data.azurerm_policy_definition.ddos-vnet-enable.id
  description = "The policy definition for the built-in policy for ddos-vnet-enable"
}

output "sql-db-private-endpoint-policy_id" {
  value       = data.azurerm_policy_definition.sql-db-private-endpoint.id
  description = "The policy definition id for the built-in policy for sql-db-private-endpoint"
}

output "sql-db-public-network-policy_id" {
  value       = data.azurerm_policy_definition.sql-db-public-network.id
  description = "The policy definition id for the built-in policy for sql-db-public-network"
}

output "sql-server-vuln-assessment" {
  value = local.sql-server-vuln-assessment
}

output "sql-server-enable-managed-identity-policy_id" {
 value = azurerm_policy_definition.sql-server-deploy-managed-identity.id
}

output "nic-publicip-deny-policy_id" {
  value = azurerm_policy_definition.nic-publicip-deny.id
  description = "The policy definition id for nic-publicip-deny"
}

#Policyset definitions
output "monitoring_governance_policyset_id" {
  value       = azurerm_policy_set_definition.monitoring_governance.id
  description = "The policy set definition id for monitoring_governance"
}

output "tag_governance_policyset_id" {
  value       = azurerm_policy_set_definition.tag_governance.id
  description = "The policy set definition id for tag_governance"
}

output "inherit_tags_policyset_id" {
  value       = azurerm_policy_set_definition.inherit_mandatory_tags_only.id
  description = "The policy set definition id for inherit_mandatory_tags_only"
}

output "network_governance_policyset_id" {
  value       = azurerm_policy_set_definition.network_governance.id
  description = "The policy set definition id for network_governance"
}

output "dns_governance_policyset_id" {
  value       = azurerm_policy_set_definition.private_dns_governance.id
  description = "The policy set definition id for network_governance"
}

output "cus_dns_governance_policyset_id" {
  value       = azurerm_policy_set_definition.private_dns_governance_cus.id
  description = "The policy set definition id for network_governance"
}

output "defender_governance_policyset_id" {
  value       = azurerm_policy_set_definition.defender_governance.id
  description = "The policy set definition id for defender_governance"
}

output "sql_vulnerability_assessments_policyset_id" {
  value       = azurerm_policy_set_definition.sql-vulnerability-assessments.id
  description = "The policy set definition id for sql vulnerability assessments"
}

output "network_watcher_policy_id" {
  value       = azurerm_policy_definition.network-watcher-def.id
  description = "The policy definition id for network watcher validation"
}