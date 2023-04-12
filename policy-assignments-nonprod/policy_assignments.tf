resource "azurerm_management_group_policy_assignment" "monitoring_governance_np" {
  name                 = "monitoring_governance_np"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.monitoring_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Monitoring Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "tag_governance_np" {
  name                 = "tag_governance_np"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.tag_governance_policyset_id
  description          = "Assignment of the Tag Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cs-mgmt-resource-lock_np" {
  name                 = "cs-mgmt-resource-lock_np"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cs-mgmt-resource-lock_policy_id
  description          = "Assignment of the Management Resource Lock initiative to management group."
  display_name         = "${var.custom_prefix} Tag Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_governance_np" {
  name                 = "network_governance_np"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_governance_policyset_id
  description          = "Assignment of the Network Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Network Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_eus2" {
  name                 = "allowed_locations_eus2"
  management_group_id  = var.mgmt-anfcorp-eus2-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.eus2-allowed-resource-locations_policy_id
  description          = "Locations where production resources can be deployed for EUS2/CUS paired regions"
  display_name         = "${var.custom_prefix} Allowed Locations"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "allowed_locations_eur" {
  name                 = "allowed_locations_eur"
  display_name         = "${var.custom_prefix} Allowed Locations europe"
  description          = "Locations where production resources can be deployed for europe regions"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.eur-allowed-resource-locations_policy_id
  management_group_id  = var.mgmt-anfcorp-we-nonprod
  location             = var.location-eur
  identity { type = "SystemAssigned" }
}
resource "azurerm_management_group_policy_assignment" "allowed_locations_ea" {
  name                 = "allowed_locations_ea"
  display_name         = "${var.custom_prefix} Allowed Locations east asia"
  description          = "Locations where production resources can be deployed for EA/SEA paired regions"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.ea-allowed-resource-locations_policy_id
  management_group_id  = var.mgmt-anfcorp-ea-nonprod
  location             = var.location-ea
  identity { type = "SystemAssigned" }
}


resource "azurerm_management_group_policy_assignment" "netwatch_create_rg" {
  name                 = "netwatch_create_rg"
  management_group_id  = var.mgmt-anfcorp-eus2-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.deploy-netwatch-rg_policy_id
  description          = "Creates Network Watcher RGs where there are none"
  display_name         = "Create Netwatch RGs"
  location             = var.location
  identity { type = "SystemAssigned" }
}


resource "azurerm_management_group_policy_assignment" "private_dns_governance_np" {
  name                 = "private_dns_gov_pr"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.dns_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cus_private_dns_governance_np" {
  name                 = "private_dns_cus_gov_pr"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.cus_dns_governance_policyset_id
  description          = "Assignment of the Monitoring Governance initiative to subscription."
  display_name         = "${var.custom_prefix} CUS Private DNS Governance"
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit storage account public access use for nonprod
resource "azurerm_management_group_policy_assignment" "storageaccount_public_access_nonprod" {
  name                 = "sa_public_access_nonprod"
  display_name         = "${var.custom_prefix} Audit Storage Account Public Access nonprod"
  description          = "Policy assignment for Storage account public access (audit) nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-public-access_policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit storage account infrastructure encryption for nonprod
resource "azurerm_management_group_policy_assignment" "storageaccount_infrastructure_encryption_nonprod" {
  name                 = "sa_encryption_nonprod"
  display_name         = "${var.custom_prefix} Audit Storage Account Infrastructure Encryption nonprod"
  description          = "Policy assignment for Storage account Infrastructure Encryption nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-infrastructure-encryption_policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit subnets for assigned route table for nonprod
resource "azurerm_management_group_policy_assignment" "subnets-require-routetable_nonprod" {
  name                 = "subnet-req-rt_nonprod"
  display_name         = "${var.custom_prefix} Require route table for subnets nonprod"
  description          = "Policy assignment for Subnet route table requirement nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnets-require-routetable_policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
  non_compliance_message {
    content = "This Subnet is missing an associated route table"
  }
}

# Audit route tables for a default route for nonprod
resource "azurerm_management_group_policy_assignment" "routetables-req-def-route_nonprod" {
  name                 = "route-req-def_nonprod"
  display_name         = "${var.custom_prefix} Require default route for routetable nonprod"
  description          = "Policy assignment for route table routing requirement nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.routetables-require-default-route_policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit route tables for valid default route for nonprod
resource "azurerm_management_group_policy_assignment" "routetables-req-def-fw_nonprod" {
  name                 = "route-req-fw_prod"
  display_name         = "${var.custom_prefix} Require default route for subnets nonprod"
  description          = "Policy assignment for route table default route requirement nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.routetables-require-default-fw_policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
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

# Deny vnet peerings for nonprod
resource "azurerm_management_group_policy_assignment" "vnet_peering_nonprod" {
  name                 = "vnet_peering_nonprod"
  display_name         = "${var.custom_prefix} Deny vnet peerings nonprod"
  description          = "Policy assignment for vnet peerings nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.vnet-peering-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit SQL TDE Encryption for nonprod
resource "azurerm_management_group_policy_assignment" "sql_tde_encryption_nonprod" {
  name                 = "sql_tde_encrypt_nonprod"
  display_name         = "${var.custom_prefix} Audit SQL TDE Encryption nonprod"
  description          = "Policy assignment for SQL TDE Encryption nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-tde-encryption-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# Audit use of secure transfer HTTPS for storage accounts nonprod
resource "azurerm_management_group_policy_assignment" "storage_account_https_nonprod" {
  name                 = "sa_https_nonprod"
  display_name         = "${var.custom_prefix} Audit Storage Account Secure Transfer using HTTPS nonprod"
  description          = "Policy assignment for Storage Account Secure Transfer using HTTPS nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.storage-account-https-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Enablement on Front Door Service nonprod
resource "azurerm_management_group_policy_assignment" "waf_enabled_frontdoor_nonprod" {
  name                 = "waf_enabled_fd_nonprod"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Front Door service nonprod"
  description          = "Policy assignment for auditing WAF enablement on Front Door service nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Front Door Service nonprod
resource "azurerm_management_group_policy_assignment" "waf_mode_frontdoor_nonprod" {
  name                 = "waf_mode_fd_nonprod"
  display_name         = "${var.custom_prefix} Audit WAF mode on Front Door service nonprod"
  description          = "Policy assignment for auditing WAF mode on Front Door service nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-frontdoor-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
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

# WAF Enablement on Application Gateway nonprod
resource "azurerm_management_group_policy_assignment" "waf_enabled_appgateway_nonprod" {
  name                 = "waf_enabled_agw_nonprod"
  display_name         = "${var.custom_prefix} Audit WAF enablement on Application Gateway nonprod"
  description          = "Policy assignment for auditing WAF enablement on Application Gateway nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-enabled-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

# WAF Mode on Application Gateway nonprod
resource "azurerm_management_group_policy_assignment" "waf_mode_appgateway_nonprod" {
  name                 = "waf_mode_agw_nonprod"
  display_name         = "${var.custom_prefix} Audit WAF mode on Application Gateway nonprod"
  description          = "Policy assignment for auditing WAF mode on Application Gateway nonprod"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.waf-mode-appgateway-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
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

resource "azurerm_management_group_policy_assignment" "sql-audit_nonprod" {
  name                 = "sql_audit_nonprod"
  display_name         = "${var.custom_prefix} Audit if SQL Auditing is not enabled nonprod"
  description          = "Policy assignment for auditing if SQL Auditing is not enabled"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-auditing-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "subnet-nsg_nonprod" {
  name                 = "subnet_nsg_nonprod"
  display_name         = "${var.custom_prefix} Audit Subnet and NSG association nonprod"
  description          = "Policy assignment for auditing if a subnet has an NSG associated."
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.subnet-nsg-policy-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "vm_naming_convention_nonprod" {
  name                 = "vm_naming_convention_np"
  display_name         = "${var.custom_prefix} Enforce virtual machine naming convention nonprod"
  description          = "Policy assignment for enforcing virtual machine naming convention"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.vm-naming-convention-np-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
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

# # Enable DDOS protection plan on vnets in nonprod, poc, and sanbox
# resource "azurerm_management_group_policy_assignment" "ddos_vnet_enable_nonprod" {
#   name = "ddos_vnet_enable_nonprod"
#   display_name = "${var.custom_prefix} Enable DDOS protection plan on virtual networks"
#   description = "Policy assignment for enabling DDOS protection plan on virtual networks"
#   policy_definition_id = data.terraform_remote_state.policy-def.outputs.ddos-vnet-enable-policy_id
#   management_group_id = var.mgmt-anfcorp-nonprod
#   location = var.location
#   identity { type = "SystemAssigned" }

#   parameters = jsonencode({
#     "effect" : {
#       "value": "Modify"
#     },

#     "ddosPlan" : {
#       "value" : "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/cpe-ddos-pr-rg/providers/Microsoft.Network/ddosProtectionPlans/anf-cpe-pr-ddos_standard"
#     }
#   })
# }


# resource "azurerm_management_group_policy_assignment" "ddos_vnet_enable_poc" {
#   name = "ddos_vnet_enable_poc"
#   display_name = "${var.custom_prefix} Enable DDOS protection plan on virtual networks"
#   description = "Policy assignment for enabling DDOS protection plan on virtual networks"
#   policy_definition_id = data.terraform_remote_state.policy-def.outputs.ddos-vnet-enable-policy_id
#   management_group_id = var.mgmt-anfcorp-poc
#   location = var.location
#   identity { type = "SystemAssigned" }

#   parameters = jsonencode({
#     "effect" : {
#       "value": "Modify"
#     },

#     "ddosPlan" : {
#       "value" : "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/cpe-ddos-pr-rg/providers/Microsoft.Network/ddosProtectionPlans/anf-cpe-pr-ddos_standard"
#     }
#   })
# }

# resource "azurerm_management_group_policy_assignment" "ddos_vnet_enable_sandbox" {
#   name = "ddos_vnet_enable_sandbox"
#   display_name = "${var.custom_prefix} Enable DDOS protection plan on virtual networks"
#   description = "Policy assignment for enabling DDOS protection plan on virtual networks"
#   policy_definition_id = data.terraform_remote_state.policy-def.outputs.ddos-vnet-enable-policy_id
#   management_group_id = var.mgmt-anfcorp-sandbox
#   location = var.location
#   identity { type = "SystemAssigned" }

#   parameters = jsonencode({
#     "effect" : {
#       "value": "Modify"
#     },

#     "ddosPlan" : {
#       "value" : "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/cpe-ddos-pr-rg/providers/Microsoft.Network/ddosProtectionPlans/anf-cpe-pr-ddos_standard"
#     }
#   })
# }

resource "azurerm_management_group_policy_assignment" "sqldb_privateendpoint_np" {
  name                 = "sqldb_privateendpoint_np"
  display_name         = "${var.custom_prefix} SQL Databases should have a private endpoint"
  description          = "Policy assignment for auditing if SQL Databses have a private endpoint"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-db-private-endpoint-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sqldb_publicnetwork_np" {
  name                 = "sqldb_publicnetwork_np"
  display_name         = "${var.custom_prefix} SQL Databases public network access should be disabled"
  description          = "Policy assignment for auditing if SQL Databses have public network access"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-db-public-network-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql_vuln_assessments_np" {
  name                 = "sql_vuln_assessments_np"
  management_group_id  = var.mgmt-anfcorp-nonprod
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql_vulnerability_assessments_policyset_id
  description          = "Assignment of the SQL vulnerability assessment initiative to subscription."
  display_name         = "${var.custom_prefix} SQL vulnerability assessment"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "sql_managed_identity_np" {
  name                 = "sql_managedidentity_np"
  display_name         = "${var.custom_prefix} SQL Servers should have a managed identity"
  description          = "Policy assignment for enabling SQL Server managed identities"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.sql-server-enable-managed-identity-policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "network_watcher_np" {
  name                 = "network_watcher_np"
  display_name         = "${var.custom_prefix} VNETs should have a Network Watcher in the same region"
  description          = "Policy assignment for validating Network Watchers for VNETs"
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.network_watcher_policy_id
  management_group_id  = var.mgmt-anfcorp-nonprod
  location             = var.location
  identity { type = "SystemAssigned" }
}