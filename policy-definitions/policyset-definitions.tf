resource "azurerm_policy_set_definition" "monitoring_governance" {
  name                = "monitoring_governance"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Monitoring Governance"
  description         = "Contains common Monitoring Governance policies"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }
METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.resource-lock-def: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.resource-lock-def[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.enable_all_activity_logs_policy: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.enable_all_activity_logs_policy[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.enable_all_activity_logs_eventhub_policy: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.enable_all_activity_logs_eventhub_policy[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_law: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_law[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }    

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_eus2: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_eus2[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_neu: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_neu[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_weu: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_weu[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_cus: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_cus[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_cus_allmetrics: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_cus_allmetrics[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_law_allmetrics: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_law_allmetrics[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }    

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_eus2_allmetrics: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_eus2_allmetrics[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_neu_allmetrics: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_neu_allmetrics[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.diag_eh_weu_allmetrics: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.diag_eh_weu_allmetrics[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
}

resource "azurerm_policy_set_definition" "tag_governance" {
  name                = "tag_governance"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Tag Governance"
  description         = "Contains common Tag Governance policies"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }

METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.require-tag-values-crit: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.require-tag-values-crit[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.require-tag-values-env: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.require-tag-values-env[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.require-tag-values-costcenter: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.require-tag-values-costcenter[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.storage-protection: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.storage-protection[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.require-tag-values-appowner: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.require-tag-values-appowner[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.inherit_tag_from_rg_policy_ids: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.inherit_tag_from_rg_policy_ids[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.require_tag_rg_policy_ids: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.require_tag_rg_policy_ids[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.require_tag_iaas_policy_ids: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.require_tag_iaas_policy_ids[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
}

resource "azurerm_policy_set_definition" "inherit_mandatory_tags_only" {
  name                = "inherit_mandatory_tags_only"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Inherit Mandatory Tags"
  description         = "Contains policy to inherit mandatory tags (subset of AnF Tag Governance Policy Set)"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }

METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.inherit_tag_from_rg_policy_ids: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.inherit_tag_from_rg_policy_ids[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
}

resource "azurerm_policy_set_definition" "network_governance" {
  name                = "network_governance"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Network Governance"
  description         = "Contains common Network policies"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }

METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in data.azurerm_policy_definition.builtin_policies_network_governance: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => data.azurerm_policy_definition.builtin_policies_network_governance[k] }
    content {
      policy_definition_id = policy_definition_reference.value["id"]
      reference_id         = policy_definition_reference.value["display_name"]
      parameter_values     = jsonencode({})
    }
  }
}

resource "azurerm_policy_set_definition" "private_dns_governance" {
  name                = "private_dns_governance"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Private DNS Governance"
  description         = "Contains policies for PDNS deployment"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }

METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.pdns_policy_ids_global: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.pdns_policy_ids_global[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
}

resource "azurerm_policy_set_definition" "private_dns_governance_cus" {
  name                = "cus_private_dns_governance"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Private DNS Governance"
  description         = "Contains policies for PDNS deployment"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }

METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.pdns_policy_ids_regional: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.pdns_policy_ids_regional[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
}

resource "azurerm_policy_set_definition" "defender_governance" {
  name                = "defender_governance"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} Defender for Cloud Governance"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "${var.policy_definition_category}"
    }
  METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in data.azurerm_policy_definition.builtin_policies_defender: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => data.azurerm_policy_definition.builtin_policies_defender[k] }
    content {
      policy_definition_id = policy_definition_reference.value["id"]
      reference_id         = policy_definition_reference.value["display_name"]
      parameter_values     = jsonencode({})
    }
  }

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.configure_k8s_defender_profile.id
    reference_id         = data.azurerm_policy_definition.configure_k8s_defender_profile.display_name
    parameter_values = jsonencode({
      "logAnalyticsWorkspaceResourceId" : {
        "value": "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourcegroups/ioa-mgmt-pr-rg/providers/microsoft.operationalinsights/workspaces/ioa-mgmt-pr-law"
      }
    })
  }
}

resource "azurerm_policy_set_definition" "sql-vulnerability-assessments" {
  name                = "sql_vulnerability_assessments"
  policy_type         = "Custom"
  display_name        = "${var.custom_prefix} SQL Server Vulnerability Enablement across all regions"
  management_group_id = var.mgmt-grp-def

  metadata = <<METADATA
    {
    "category": "SQL"
    }
  METADATA

  dynamic "policy_definition_reference" {
    for_each = { for k in compact([for k, v in local.sql-server-vuln-assessment: contains(var.exclusion-list-initiative,v.name) ? "" : k]): k => local.sql-server-vuln-assessment[k] }
    content {
      policy_definition_id = policy_definition_reference.value.id
      reference_id         = policy_definition_reference.value.id
      parameter_values     = jsonencode({})
    }
  }
}