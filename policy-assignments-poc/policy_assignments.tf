/*
resource "azurerm_management_group_policy_assignment" "monitoring_governance_poc" {
  name                 = "monitorng_governance_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.monitoring_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Monitoring Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "monitoring_governance_poc" {
  name                 = "monitoring_governance_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.monitoring_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Monitoring Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "private_dns_governance_poc" {
  name                 = "private_dns_gov_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cus_private_dns_governance_poc" {
  name                 = "cus_private_dns_gov_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cus_dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "private_dns_governance_poc" {
  name                 = "private_dns_gov_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cus_private_dns_governance_poc" {
  name                 = "cus_private_dns_gov_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cus_dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "tag_governance_poc" {
  name                 = "tag_governance_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.tag_governance_policyset_id
  description          = "Assignment of the Tag Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/

resource "azurerm_management_group_policy_assignment" "cost_center_tag_governance_poc" {
  name                 = "costcenter_tag_gov_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-costcenter-tag-rg_policy_id
  description          = "Assignment of the anf-cost_center tag governance to subscription."
  display_name         = "${var.custom_prefix} cost_center tag governance"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cost_center_tag_values_governance_poc" {
  name                 = "costcenter_value_gov_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-tag-values-costcenter_policy_id
  description          = "Assignment of the anf-cost_center tag value governance to subscription."
  display_name         = "${var.custom_prefix} cost_center tag value governance"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "inherit_tags_rg_poc" {
  name                 = "inherit_tags_rg_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.inherit_tags_policyset_id
  description          = "Assignment of the 'tag inheritance from rg' policy to subscription."
  display_name         = "${var.custom_prefix} tag inheritance"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "expiration_tag_poc" {
  name                 = "expiration_tag_poc"
  management_group_id  = var.mgmt-anfcorp-poc-root
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-tag-values-expiration-date_policy_id
  description          = "Assignment of the 'anf-expires_on' tag to POC resource groups."
  display_name         = "${var.custom_prefix} Tag Governance - Expiration"
  non_compliance_message {
    content = "A tag of value 'anf-expires_on' is required in the format of 'mm-dd-yyyy'"
  }
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "requestor_tag_poc" {
  name                 = "requestor_tag_poc"
  management_group_id  = var.mgmt-anfcorp-poc-root
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-tag-values-requestor_policy_id
  description          = "Assignment of the 'anf-requestor' tag to POC resource groups."
  display_name         = "${var.custom_prefix} Tag Governance - Requestor"
  non_compliance_message {
    content = "A tag of value 'anf-requestor' is required. The provided username must include '@anfcorp.com'"
  }
  location             = var.location
  identity { type = "SystemAssigned" }
}

/*
resource "azurerm_management_group_policy_assignment" "tag_governance_poc" {
  name                 = "tag_governance_poc"
  management_group_id  = var.mgmt-anfcorp-azp
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.tag_governance_policyset_id
  description          = "Assignment of the Tag Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
resource "azurerm_management_group_policy_assignment" "cs-mgmt-resource-lock_poc" {
  name                 = "cs-mgmt-resource-lck_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cs-mgmt-resource-lock_policy_id
  description          = "Assignment of the Management Resource Lock initiative to management group."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_governance_poc" {
  name                 = "network_governance_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_governance_policyset_id
  description          = "Assignment of the Network Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Network Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
resource "azurerm_management_group_policy_assignment" "network_governance_poc" {
  name                 = "network_governance_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_governance_policyset_id
  description          = "Assignment of the Network Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Network Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
resource "azurerm_management_group_policy_assignment" "allowed_locations_eus2" {
  name                 = "allowed_locations_eus2"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.eus2-allowed-resource-locations_policy_id
  description          = "Locations where production resources can be deployed for EUS2/CUS paired regions"
  display_name         = "${var.custom_prefix} Allowed Locations"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_seas" {
  name                 = "allowed_locations_seas"
  display_name         = "${var.custom_prefix} Allowed Locations seas"
  description          = "Locations where production resources can be deployed for seas regions"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.seas-allowed-resource-locations_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location-seas
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_eur" {
  name                 = "allowed_locations_eur"
  display_name         = "${var.custom_prefix} Allowed Locations europe"
  description          = "Locations where production resources can be deployed for europe regions"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.eur-allowed-resource-locations_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location-eur
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed-sed-vm-sku" {
  name                 = "allowed-sed-vm-sku"
  display_name         = "${var.custom_prefix} allowed sed vm skus"
  description          = "Policy Assignment for allowed-sed-vm-sku definition"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.allowed-sed-vm-sku_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

#storage account naming policy assignment
resource "azurerm_management_group_policy_assignment" "storageaccount-name" {
  name                 = "storageaccount-name"
  display_name         = "${var.custom_prefix} storage account naming policy seas"
  description          = "Policy Assignment for storage account naming definition"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storageaccount-name_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location-seas
  identity { type = "SystemAssigned" }
}

# Defender for Cloud Governance policy initiative assignment
resource "azurerm_management_group_policy_assignment" "defender_governance_root" {
  name                 = "defender_governance_root"
  display_name         = "${var.custom_prefix} Defender Governance anfcorp-root"
  description          = "Assignment of the Defender Governance initiative to anfcorp-root."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.defender_governance_policyset_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit storage account public access use for poc
resource "azurerm_management_group_policy_assignment" "storageaccount_public_access_poc" {
  name                 = "sa_public_access_poc"
  display_name         = "${var.custom_prefix} Audit Storage Account Public Access poc"
  description          = "Policy assignment for Storage account public access (audit) poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-public-access_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
# Audit storage account public access use for poc
resource "azurerm_management_group_policy_assignment" "storageaccount_public_access_poc" {
  name                 = "sa_public_access_poc"
  display_name         = "${var.custom_prefix} Audit Storage Account Public Access poc"
  description          = "Policy assignment for Storage account public access (audit) poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-public-access_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
# Audit storage account infrastructure encryption for poc
resource "azurerm_management_group_policy_assignment" "storageaccount_infrastructure_encryption_poc" {
  name                 = "sa_encryption_poc"
  display_name         = "${var.custom_prefix} Audit Storage Account Infrastructure Encryption poc"
  description          = "Policy assignment for Storage account Infrastructure Encryption poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-infrastructure-encryption_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
# Audit storage account infrastructure encryption for poc
resource "azurerm_management_group_policy_assignment" "storageaccount_infrastructure_encryption_poc" {
  name                 = "sa_encryption_poc"
  display_name         = "${var.custom_prefix} Audit Storage Account Infrastructure Encryption poc"
  description          = "Policy assignment for Storage account Infrastructure Encryption poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-infrastructure-encryption_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
# Deny vnet peerings for poc
resource "azurerm_management_group_policy_assignment" "vnet_peering_poc" {
  name                 = "vnet_peering_poc"
  display_name         = "${var.custom_prefix} Deny vnet peerings poc"
  description          = "Policy assignment for vnet peerings poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.vnet-peering-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit subnets for assigned route table for poc
resource "azurerm_management_group_policy_assignment" "subnets-require-routetable_poc" {
  name                 = "subnet-req-rt_poc"
  display_name         = "${var.custom_prefix} Require route table for subnets poc"
  description          = "Policy assignment for Subnet route table requirement poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnets-require-routetable_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
  non_compliance_message {
    content = "This Subnet is missing an associated route table"
  }
}

# Audit route tables for a default route for poc
resource "azurerm_management_group_policy_assignment" "routetables-req-def-route_poc" {
  name                 = "route-req-def_poc"
  display_name         = "${var.custom_prefix} Require default route for routetable poc"
  description          = "Policy assignment for route table routing requirement poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.routetables-require-default-route_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit route tables for valid default route for poc
resource "azurerm_management_group_policy_assignment" "routetables-req-def-fw_poc" {
  name                 = "route-req-fw_poc"
  display_name         = "${var.custom_prefix} Require default route for subnets poc"
  description          = "Policy assignment for route table default route requirement poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.routetables-require-default-fw_policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
  non_compliance_message {
    content = "This RouteTable is missing an internet route to the firewall"
  }
  parameters = jsonencode({
    "routeTableSettings" : {
      "value" : {
        "eastus2" : {
          "virtualApplianceIpAddress" : "10.8.64.4"
        },
        "centralus" : {
          "virtualApplianceIpAddress" : "10.11.64.4"
        },
        "westeurope" : {
          "virtualApplianceIpAddress" : "10.8.128.4"
        },
        "northeurope" : {
          "virtualApplianceIpAddress" : "10.11.0.4"
        },
        "disabled" : {
          "virtualApplianceIpAddress" : ""
        }
  } } })
}

# Audit SQL TDE encryption for poc
resource "azurerm_management_group_policy_assignment" "sql_tde_encryption_poc" {
  name                 = "sql_tde_encrypt_poc"
  display_name         = "${var.custom_prefix} Audit SQL TDE Encryption poc"
  description          = "Policy assignment for SQL TDE Encryption poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-tde-encryption-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
# Audit SQL TDE encryption for poc
resource "azurerm_management_group_policy_assignment" "sql_tde_encryption_poc" {
  name                 = "sql_tde_encrypt_poc"
  display_name         = "${var.custom_prefix} Audit SQL TDE Encryption poc"
  description          = "Policy assignment for SQL TDE Encryption poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-tde-encryption-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
# Audit use of secure transfer HTTPS for storage accounts poc
resource "azurerm_management_group_policy_assignment" "storage_account_https_poc" {
  name                 = "sa_https_poc"
  display_name         = "${var.custom_prefix} Audit Storage Account Secure Transfer using HTTPS poc"
  description          = "Policy assignment for Storage Account Secure Transfer using HTTPS poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-https-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
# Audit use of secure transfer HTTPS for storage accounts poc
resource "azurerm_management_group_policy_assignment" "storage_account_https_poc" {
  name                 = "sa_https_poc"
  display_name         = "${var.custom_prefix} Audit Storage Account Secure Transfer using HTTPS poc"
  description          = "Policy assignment for Storage Account Secure Transfer using HTTPS poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-https-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
# WAF Enablement on Front Door Service poc
resource "azurerm_management_group_policy_assignment" "waf_enabled_frontdoor_poc" {
  name                 = "waf_enabled_fd_poc"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Front Door service poc"
  description          = "Policy assignment for auditing WAF enablement on Front Door service poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Front Door Service poc
resource "azurerm_management_group_policy_assignment" "waf_mode_frontdoor_poc" {
  name                 = "waf_mode_fd_poc"
  display_name         = "${var.custom_prefix} Audit WAF mode on Front Door service poc"
  description          = "Policy assignment for auditing WAF mode on Front Door service poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }

  parameters = <<PARAMETER
{
    "modeRequirement": {
        "value": "Prevention"
    }
}
PARAMETER
}

# WAF Enablement on Application Gateway poc
resource "azurerm_management_group_policy_assignment" "waf_enabled_appgateway_poc" {
  name                 = "waf_enabled_agw_poc"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Application Gateway poc"
  description          = "Policy assignment for auditing WAF enablement on Application Gateway poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Application Gateway poc
resource "azurerm_management_group_policy_assignment" "waf_mode_appgateway_poc" {
  name                 = "waf_mode_agw_poc"
  display_name         = "${var.custom_prefix} Audit WAF mode on Application Gateway poc"
  description          = "Policy assignment for auditing WAF mode on Application Gateway poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }

  parameters = <<PARAMETER
{
    "modeRequirement": {
        "value": "Prevention"
    }
}
PARAMETER
}
/*
# WAF Enablement on Front Door Service poc
resource "azurerm_management_group_policy_assignment" "waf_enabled_frontdoor_poc" {
  name                 = "waf_enabled_fd_poc"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Front Door service poc"
  description          = "Policy assignment for auditing WAF enablement on Front Door service poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Front Door Service poc
resource "azurerm_management_group_policy_assignment" "waf_mode_frontdoor_poc" {
  name                 = "waf_mode_fd_poc"
  display_name         = "${var.custom_prefix} Audit WAF mode on Front Door service poc"
  description          = "Policy assignment for auditing WAF mode on Front Door service poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }

  parameters = <<PARAMETER
{
    "modeRequirement": {
        "value": "Prevention"
    }
}
PARAMETER
}

# WAF Enablement on Application Gateway poc
resource "azurerm_management_group_policy_assignment" "waf_enabled_appgateway_poc" {
  name                 = "waf_enabled_agw_poc"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Application Gateway poc"
  description          = "Policy assignment for auditing WAF enablement on Application Gateway poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Application Gateway poc
resource "azurerm_management_group_policy_assignment" "waf_mode_appgateway_poc" {
  name                 = "waf_mode_agw_poc"
  display_name         = "${var.custom_prefix} Audit WAF mode on Application Gateway poc"
  description          = "Policy assignment for auditing WAF mode on Application Gateway poc"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }

  parameters = <<PARAMETER
{
    "modeRequirement": {
        "value": "Prevention"
    }
}
PARAMETER
}
*/
resource "azurerm_management_group_policy_assignment" "sql-audit_poc" {
  name                 = "sql_audit_poc"
  display_name         = "${var.custom_prefix} Audit if SQL Auditing is not enabled poc"
  description          = "Policy assignment for auditing if SQL Auditing is not enabled"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-auditing-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
resource "azurerm_management_group_policy_assignment" "sql-audit_poc" {
  name                 = "sql_audit_poc"
  display_name         = "${var.custom_prefix} Audit if SQL Auditing is not enabled poc"
  description          = "Policy assignment for auditing if SQL Auditing is not enabled"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-auditing-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
resource "azurerm_management_group_policy_assignment" "subnet-nsg_poc" {
  name                 = "subnet_nsg_poc"
  display_name         = "${var.custom_prefix} Audit Subnet and NSG association poc"
  description          = "Policy assignment for auditing if a subnet has an NSG associated."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnet-nsg-policy-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
/*
resource "azurerm_management_group_policy_assignment" "subnet-nsg_poc" {
  name                 = "subnet_nsg_poc"
  display_name         = "${var.custom_prefix} Audit Subnet and NSG association poc"
  description          = "Policy assignment for auditing if a subnet has an NSG associated."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnet-nsg-policy-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
*/
resource "azurerm_management_group_policy_assignment" "b2c-connection_anfcorp-root" {
  name                 = "b2c_connection_root"
  display_name         = "${var.custom_prefix} Limit ability to create Azure B2C connections anfcorp-root"
  description          = "Policy assignment for denying creation of Azure B2C connections"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.b2c-connection-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "vm_naming_convention_poc" {
  name                 = "vm_naming_convention_poc"
  display_name         = "${var.custom_prefix} Enforce virtual machine naming convention poc"
  description          = "Policy assignment for enforcing virtual machine naming convention"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.vm-naming-convention-pr-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }

  non_compliance_message {
    content = "The server name needs to follow ANF server naming conventions."
  }

  parameters = jsonencode({
    "effectAction" : {
      "value" : "Deny"
    }
  })
}

# resource "azurerm_management_group_policy_assignment" "ddos_vnet_enable_poc" {
#   name                 = "ddos_vnet_enable_poc"
#   display_name         = "${var.custom_prefix} Enable DDOS protection plan on virtual networks"
#   description          = "Policy assignment for enabling DDOS protection plan on virtual networks"
#   policy_definition_id = data.terraform_remote_state.policy-def.outputs.ddos-vnet-enable-policy_id
#   management_group_id  = var.mgmt-anfcorp-poc
#   location             = var.location
#   identity { type = "SystemAssigned" }

#   parameters = jsonencode({
#     "effect" : {
#       "value" : "Modify"
#     },

#     "ddosPlan" : {
#       "value" : "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/cpe-ddos-pr-rg/providers/Microsoft.Network/ddosProtectionPlans/anf-cpe-pr-ddos_standard"
#     }
#   })
# }

resource "azurerm_management_group_policy_assignment" "sqldb_privendpoint_poc" {
  name                 = "sqldb_privendpoint_poc"
  display_name         = "${var.custom_prefix} SQL Databases should have a private endpoint"
  description          = "Policy assignment for auditing if SQL Databses have a private endpoint"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-db-private-endpoint-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sqldb_publicnetwork_poc" {
  name                 = "sqldb_publicnetwork_poc"
  display_name         = "${var.custom_prefix} SQL Databases public network access should be disabled"
  description          = "Policy assignment for auditing if SQL Databses have public network access"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-db-public-network-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql_vuln_assessments_poc" {
  name                 = "sql_vuln_assessments_poc"
  management_group_id  = var.mgmt-anfcorp-poc
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql_vulnerability_assessments_policyset_id
  description          = "Assignment of the SQL vulnerability assessment initiative to subscription."
  display_name         = "${var.custom_prefix} SQL vulnerability assessment"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql_managed_identity_poc" {
  name                 = "sql_managedidentity_poc"
  display_name         = "${var.custom_prefix} SQL Servers should have a managed identity"
  description          = "Policy assignment for enabling SQL Server managed identities"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-server-enable-managed-identity-policy_id
  management_group_id  = var.mgmt-anfcorp-poc
  location             = var.location
  identity { type = "SystemAssigned" }
}
