resource "azurerm_management_group_policy_assignment" "cost_center_tag_governance_sb" {
  name                 = "costcenter_tag_gov_sb"
  management_group_id  = var.mgmt-anfcorp-sandbox
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-costcenter-tag-rg_policy_id
  description          = "Assignment of the anf-cost_center tag governance to subscription."
  display_name         = "${var.custom_prefix} cost center tag governance"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "cost_center_tag_values_governance_sb" {
  name                 = "costcenter_values_gov_sb"
  management_group_id  = var.mgmt-anfcorp-sandbox
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-tag-values-costcenter_policy_id
  description          = "Assignment of the anf-cost_center tag value governance to subscription."
  display_name         = "${var.custom_prefix} cost center tag value governance"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "inherit_tags_rg_sb" {
  name                 = "inherit_tags_rg_sb"
  management_group_id  = var.mgmt-anfcorp-sandbox
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.inherit_tags_policyset_id
  description          = "Assignment of the 'tag inheritance from rg' policy to subscription."
  display_name         = "${var.custom_prefix} tag inheritance"
  location             = var.location
  parameters           = jsonencode({})
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "expiration_tag_sb" {
  name                 = "expiration_tag_sb"
  management_group_id  = var.mgmt-anfcorp-sandbox
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-tag-values-expiration-date_policy_id
  description          = "Assignment of the 'anf-expires_on' tag to Sandbox resource groups."
  display_name         = "${var.custom_prefix} Tag Governance - Expiration"
  non_compliance_message {
    content = "An expiration date must be provided for this resource group. The tag name should be 'anf-expires_on' with the format of 'mm-dd-yyyy'"
  }
  location             = var.location
  identity { type = "SystemAssigned" }
}

resource "azurerm_management_group_policy_assignment" "requestor_tag_sb" {
  name                 = "requestor_tag_sb"
  management_group_id  = var.mgmt-anfcorp-sandbox
  policy_definition_id = data.terraform_remote_state.policy-def.outputs.require-tag-values-requestor_policy_id
  description          = "Assignment of the 'anf-requestor' tag to Sandbox resource groups."
  display_name         = "${var.custom_prefix} Tag Governance - requestor"
  non_compliance_message {
    content = "A tag of value 'anf-requestor' is required. The provided username must include '@anfcorp.com'"
  }
  location             = var.location
  identity { type = "SystemAssigned" }
}
