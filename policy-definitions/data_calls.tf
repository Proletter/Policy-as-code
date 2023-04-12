data "azurerm_policy_definition" "storage-account-public-access" {
  display_name = "[Preview]: Storage account public access should be disallowed"
}

data "azurerm_policy_definition" "storage-account-infrastructure-encryption" {
  display_name = "Storage accounts should have infrastructure encryption"
}

data "azurerm_policy_definition" "anf-sec-vnet-peering" {
  display_name = "ANF SEC DENY - VNET Peering"
}

data "azurerm_policy_definition" "sql-tde-encryption" {
  display_name = "Transparent Data Encryption on SQL databases should be enabled"
}

data "azurerm_policy_definition" "storage-account-https" {
  display_name = "Secure transfer to storage accounts should be enabled"
}

data "azurerm_policy_definition" "waf-enabled-frontdoor" {
  display_name = "Azure Web Application Firewall should be enabled for Azure Front Door entry-points"
}

data "azurerm_policy_definition" "waf-mode-frontdoor" {
  display_name = "Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service"
}

data "azurerm_policy_definition" "waf-enabled-appgateway" {
  display_name = "Web Application Firewall (WAF) should be enabled for Application Gateway"
}

data "azurerm_policy_definition" "waf-mode-appgateway" {
  display_name = "Web Application Firewall (WAF) should use the specified mode for Application Gateway"
}

data "azurerm_policy_definition" "sql-auditing" {
  display_name = "Auditing on SQL server should be enabled"
}

data "azurerm_policy_definition" "ddos-vnet-enable" {
  display_name = "Virtual networks should be protected by Azure DDoS Protection Standard"
}

data "azurerm_policy_definition" "sql-db-private-endpoint" {
  display_name = "Private endpoint connections on Azure SQL Database should be enabled"
}

data "azurerm_policy_definition" "sql-db-public-network" {
  display_name = "Public network access on Azure SQL Database should be disabled"
}

data "azurerm_policy_definition" "builtin_policies_defender" {
  count        = length(var.builtin_policies_defender)
  display_name = var.builtin_policies_defender[count.index]
}

data "azurerm_policy_definition" "configure_k8s_defender_profile" {
  display_name = "Configure Azure Kubernetes Service clusters to enable Defender profile"
}

data "azurerm_policy_definition" "builtin_policies_network_governance" {
  count        = length(var.builtin_policies_network_governance)
  display_name = var.builtin_policies_network_governance[count.index]
}

data "terraform_remote_state" "ie-vuln-assessments" {
  backend = "remote"

  config  = {
    organization = "anfcorp"               //ANF's TFC organization
    workspaces   = {
      name       = "azure-shared-services-ie-vuln-assessments" //Name of the target workspace 
    }
  }

  # Outputting the following from this workspace:
  # "storage_regions" which contains the following items for each region
  #     shortname 
  #     azurename 
  #     sa_id     
}