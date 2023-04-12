resource "azurerm_management_group_policy_assignment" "monitoring_governance_azp" {
  name                 = "monitorng_governance_azp"
  management_group_id  = var.mgmt-anfcorp-azp
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.monitoring_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Monitoring Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "monitoring_governance_pr" {
  name                 = "monitoring_governance_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.monitoring_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Monitoring Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "private_dns_governance_azp" {
  name                 = "private_dns_gov_azp"
  management_group_id  = var.mgmt-anfcorp-azp
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cus_private_dns_governance_azp" {
  name                 = "cus_private_dns_gov_azp"
  management_group_id  = var.mgmt-anfcorp-azp
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cus_dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "private_dns_governance_pr" {
  name                 = "private_dns_gov_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cus_private_dns_governance_pr" {
  name                 = "cus_private_dns_gov_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cus_dns_governance_policyset_id
  description          = "Assignment of the Private DNS initiative to management group."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "tag_governance_azp" {
  name                 = "tag_governance_azp"
  management_group_id  = var.mgmt-anfcorp-azp
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.tag_governance_policyset_id
  description          = "Assignment of the Tag Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "tag_governance_pr" {
  name                 = "tag_governance_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.tag_governance_policyset_id
  description          = "Assignment of the Tag Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cs-mgmt-resource-lock_pr" {
  name                 = "cs-mgmt-resource-lock_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cs-mgmt-resource-lock_policy_id
  description          = "Assignment of the Management Resource Lock initiative to management group."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_governance_azp" {
  name                 = "network_governance_azp"
  management_group_id  = var.mgmt-anfcorp-azp
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_governance_policyset_id
  description          = "Assignment of the Network Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Network Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_governance_pr" {
  name                 = "network_governance_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_governance_policyset_id
  description          = "Assignment of the Network Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Network Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_eus2" {
  name                 = "allowed_locations_eus2"
  management_group_id  = var.mgmt-anfcorp-eus2-prod
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
  management_group_id  = var.mgmt-anfcorp-seas
  location             = var.location-seas
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_eur" {
  name                 = "allowed_locations_eur"
  display_name         = "${var.custom_prefix} Allowed Locations europe"
  description          = "Locations where production resources can be deployed for europe regions"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.eur-allowed-resource-locations_policy_id
  management_group_id  = var.mgmt-anfcorp-we-prod
  location             = var.location-eur
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_ea" {
  name                 = "allowed_locations_ea"
  display_name         = "${var.custom_prefix} Allowed Locations east asia"
  description          = "Locations where production resources can be deployed for europe regions"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.ea-allowed-resource-locations_policy_id
  management_group_id  = var.mgmt-anfcorp-ea-prod
  location             = var.location-ea
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed-sed-vm-sku" {
  name                 = "allowed-sed-vm-sku"
  display_name         = "${var.custom_prefix} allowed sed vm skus"
  description          = "Policy Assignment for allowed-sed-vm-sku definition"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.allowed-sed-vm-sku_policy_id
  management_group_id  = var.mgmt-anfcorp-root
  location             = var.location
  identity { type = "SystemAssigned" }
}

#storage account naming policy assignment
resource "azurerm_management_group_policy_assignment" "storageaccount-name" {
  name                 = "storageaccount-name"
  display_name         = "${var.custom_prefix} storage account naming policy seas"
  description          = "Policy Assignment for storage account naming definition"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storageaccount-name_policy_id
  management_group_id  = var.mgmt-anfcorp-seas
  location             = var.location-seas
  identity { type = "SystemAssigned" }
}

# Defender for Cloud Governance policy initiative assignment
resource "azurerm_management_group_policy_assignment" "defender_governance_root" {
  name                 = "defender_governance_root"
  display_name         = "${var.custom_prefix} Defender Governance anfcorp-root"
  description          = "Assignment of the Defender Governance initiative to anfcorp-root."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.defender_governance_policyset_id
  management_group_id  = var.mgmt-anfcorp-root
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

# Audit storage account public access use for prod
resource "azurerm_management_group_policy_assignment" "storageaccount_public_access_prod" {
  name                 = "sa_public_access_prod"
  display_name         = "${var.custom_prefix} Audit Storage Account Public Access prod"
  description          = "Policy assignment for Storage account public access (audit) prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-public-access_policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit storage account public access use for azp
resource "azurerm_management_group_policy_assignment" "storageaccount_public_access_azp" {
  name                 = "sa_public_access_azp"
  display_name         = "${var.custom_prefix} Audit Storage Account Public Access azp"
  description          = "Policy assignment for Storage account public access (audit) azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-public-access_policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit storage account infrastructure encryption for prod
resource "azurerm_management_group_policy_assignment" "storageaccount_infrastructure_encryption_prod" {
  name                 = "sa_encryption_prod"
  display_name         = "${var.custom_prefix} Audit Storage Account Infrastructure Encryption prod"
  description          = "Policy assignment for Storage account Infrastructure Encryption prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-infrastructure-encryption_policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit storage account infrastructure encryption for azp
resource "azurerm_management_group_policy_assignment" "storageaccount_infrastructure_encryption_azp" {
  name                 = "sa_encryption_azp"
  display_name         = "${var.custom_prefix} Audit Storage Account Infrastructure Encryption azp"
  description          = "Policy assignment for Storage account Infrastructure Encryption azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-infrastructure-encryption_policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Deny vnet peerings for prod
resource "azurerm_management_group_policy_assignment" "vnet_peering_prod" {
  name                 = "vnet_peering_prod"
  display_name         = "${var.custom_prefix} Deny vnet peerings prod"
  description          = "Policy assignment for vnet peerings prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.vnet-peering-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit subnets for assigned route table for prod
resource "azurerm_management_group_policy_assignment" "subnets-require-routetable_prod" {
  name                 = "subnet-req-rt_prod"
  display_name         = "${var.custom_prefix} Require route table for subnets prod"
  description          = "Policy assignment for Subnet route table requirement prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnets-require-routetable_policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
  non_compliance_message {
    content = "This Subnet is missing an associated route table"
  }
}

# Audit route tables for a default route for prod
resource "azurerm_management_group_policy_assignment" "routetables-req-def-route_prod" {
  name                 = "route-req-def_prod"
  display_name         = "${var.custom_prefix} Require default route for routetable prod"
  description          = "Policy assignment for route table routing requirement prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.routetables-require-default-route_policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit route tables for valid default route for prod
resource "azurerm_management_group_policy_assignment" "routetables-req-def-fw_prod" {
  name                 = "route-req-fw_prod"
  display_name         = "${var.custom_prefix} Require default route for subnets prod"
  description          = "Policy assignment for route table default route requirement prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.routetables-require-default-fw_policy_id
  management_group_id  = var.mgmt-anfcorp-prod
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

# Audit SQL TDE encryption for prod
resource "azurerm_management_group_policy_assignment" "sql_tde_encryption_prod" {
  name                 = "sql_tde_encrypt_prod"
  display_name         = "${var.custom_prefix} Audit SQL TDE Encryption prod"
  description          = "Policy assignment for SQL TDE Encryption prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-tde-encryption-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit SQL TDE encryption for azp
resource "azurerm_management_group_policy_assignment" "sql_tde_encryption_azp" {
  name                 = "sql_tde_encrypt_azp"
  display_name         = "${var.custom_prefix} Audit SQL TDE Encryption azp"
  description          = "Policy assignment for SQL TDE Encryption azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-tde-encryption-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit use of secure transfer HTTPS for storage accounts prod
resource "azurerm_management_group_policy_assignment" "storage_account_https_prod" {
  name                 = "sa_https_prod"
  display_name         = "${var.custom_prefix} Audit Storage Account Secure Transfer using HTTPS prod"
  description          = "Policy assignment for Storage Account Secure Transfer using HTTPS prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-https-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit use of secure transfer HTTPS for storage accounts azp
resource "azurerm_management_group_policy_assignment" "storage_account_https_azp" {
  name                 = "sa_https_azp"
  display_name         = "${var.custom_prefix} Audit Storage Account Secure Transfer using HTTPS azp"
  description          = "Policy assignment for Storage Account Secure Transfer using HTTPS azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-https-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Enablement on Front Door Service prod
resource "azurerm_management_group_policy_assignment" "waf_enabled_frontdoor_prod" {
  name                 = "waf_enabled_fd_prod"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Front Door service prod"
  description          = "Policy assignment for auditing WAF enablement on Front Door service prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Front Door Service prod
resource "azurerm_management_group_policy_assignment" "waf_mode_frontdoor_prod" {
  name                 = "waf_mode_fd_prod"
  display_name         = "${var.custom_prefix} Audit WAF mode on Front Door service prod"
  description          = "Policy assignment for auditing WAF mode on Front Door service prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
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

# WAF Enablement on Application Gateway prod
resource "azurerm_management_group_policy_assignment" "waf_enabled_appgateway_prod" {
  name                 = "waf_enabled_agw_prod"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Application Gateway prod"
  description          = "Policy assignment for auditing WAF enablement on Application Gateway prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Application Gateway prod
resource "azurerm_management_group_policy_assignment" "waf_mode_appgateway_prod" {
  name                 = "waf_mode_agw_prod"
  display_name         = "${var.custom_prefix} Audit WAF mode on Application Gateway prod"
  description          = "Policy assignment for auditing WAF mode on Application Gateway prod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
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

# WAF Enablement on Front Door Service azp
resource "azurerm_management_group_policy_assignment" "waf_enabled_frontdoor_azp" {
  name                 = "waf_enabled_fd_azp"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Front Door service azp"
  description          = "Policy assignment for auditing WAF enablement on Front Door service azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Front Door Service azp
resource "azurerm_management_group_policy_assignment" "waf_mode_frontdoor_azp" {
  name                 = "waf_mode_fd_azp"
  display_name         = "${var.custom_prefix} Audit WAF mode on Front Door service azp"
  description          = "Policy assignment for auditing WAF mode on Front Door service azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
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

# WAF Enablement on Application Gateway azp
resource "azurerm_management_group_policy_assignment" "waf_enabled_appgateway_azp" {
  name                 = "waf_enabled_agw_azp"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Application Gateway azp"
  description          = "Policy assignment for auditing WAF enablement on Application Gateway azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Application Gateway azp
resource "azurerm_management_group_policy_assignment" "waf_mode_appgateway_azp" {
  name                 = "waf_mode_agw_azp"
  display_name         = "${var.custom_prefix} Audit WAF mode on Application Gateway azp"
  description          = "Policy assignment for auditing WAF mode on Application Gateway azp"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
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

resource "azurerm_management_group_policy_assignment" "sql-audit_azp" {
  name                 = "sql_audit_azp"
  display_name         = "${var.custom_prefix} Audit if SQL Auditing is not enabled azp"
  description          = "Policy assignment for auditing if SQL Auditing is not enabled"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-auditing-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql-audit_prod" {
  name                 = "sql_audit_prod"
  display_name         = "${var.custom_prefix} Audit if SQL Auditing is not enabled prod"
  description          = "Policy assignment for auditing if SQL Auditing is not enabled"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-auditing-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "subnet-nsg_azp" {
  name                 = "subnet_nsg_azp"
  display_name         = "${var.custom_prefix} Audit Subnet and NSG association azp"
  description          = "Policy assignment for auditing if a subnet has an NSG associated."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnet-nsg-policy-policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "subnet-nsg_prod" {
  name                 = "subnet_nsg_prod"
  display_name         = "${var.custom_prefix} Audit Subnet and NSG association prod"
  description          = "Policy assignment for auditing if a subnet has an NSG associated."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnet-nsg-policy-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "b2c-connection_anfcorp-root" {
  name                 = "b2c_connection_root"
  display_name         = "${var.custom_prefix} Limit ability to create Azure B2C connections anfcorp-root"
  description          = "Policy assignment for denying creation of Azure B2C connections"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.b2c-connection-policy_id
  management_group_id  = var.mgmt-anfcorp-root
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "vm_naming_convention_prod" {
  name                 = "vm_naming_convention_pr"
  display_name         = "${var.custom_prefix} Enforce virtual machine naming convention prod"
  description          = "Policy assignment for enforcing virtual machine naming convention"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.vm-naming-convention-pr-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
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

# resource "azurerm_management_group_policy_assignment" "ddos_vnet_enable_prod" {
#   name                 = "ddos_vnet_enable_prod"
#   display_name         = "${var.custom_prefix} Enable DDOS protection plan on virtual networks"
#   description          = "Policy assignment for enabling DDOS protection plan on virtual networks"
#   policy_definition_id = data.terraform_remote_state.policy-def.outputs.ddos-vnet-enable-policy_id
#   management_group_id  = var.mgmt-anfcorp-prod
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

# resource "azurerm_management_group_policy_assignment" "ddos_vnet_enable_azp" {
#   name                 = "ddos_vnet_enable_azp"
#   display_name         = "${var.custom_prefix} Enable DDOS protection plan on virtual networks"
#   description          = "Policy assignment for enabling DDOS protection plan on virtual networks"
#   policy_definition_id = data.terraform_remote_state.policy-def.outputs.ddos-vnet-enable-policy_id
#   management_group_id  = var.mgmt-anfcorp-azp
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

resource "azurerm_management_group_policy_assignment" "sqldb_privendpoint_prod" {
  name                 = "sqldb_privendpoint_prod"
  display_name         = "${var.custom_prefix} SQL Databases should have a private endpoint"
  description          = "Policy assignment for auditing if SQL Databses have a private endpoint"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-db-private-endpoint-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sqldb_publicnetwork_prod" {
  name                 = "sqldb_publicnetwork_prod"
  display_name         = "${var.custom_prefix} SQL Databases public network access should be disabled"
  description          = "Policy assignment for auditing if SQL Databses have public network access"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-db-public-network-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql_vuln_assessments_prod" {
  name                 = "sql_vuln_assessments_pr"
  management_group_id  = var.mgmt-anfcorp-prod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql_vulnerability_assessments_policyset_id
  description          = "Assignment of the SQL vulnerability assessment initiative to subscription."
  display_name         = "${var.custom_prefix} SQL vulnerability assessment"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql_managed_identity_pr" {
  name                 = "sql_managedidentity_pr"
  display_name         = "${var.custom_prefix} SQL Servers should have a managed identity"
  description          = "Policy assignment for enabling SQL Server managed identities"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-server-enable-managed-identity-policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_watcher_pr" {
  name                 = "network_watcher_pr"
  display_name         = "${var.custom_prefix} VNETs should have a Network Watcher in the same region"
  description          = "Policy assignment for validating Network Watchers for VNETs"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_watcher_policy_id
  management_group_id  = var.mgmt-anfcorp-prod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_watcher_azp" {
  name                 = "network_watcher_azp"
  display_name         = "${var.custom_prefix} VNETs should have a Network Watcher in the same region"
  description          = "Policy assignment for validating Network Watchers for VNETs"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_watcher_policy_id
  management_group_id  = var.mgmt-anfcorp-azp
  location             = var.location
  identity { type = "SystemAssigned" }
}