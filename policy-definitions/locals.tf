locals {
  # The following is only used in the module outputs for informational purposes
  pdns_policy_ids_global = {
    for instance in keys(var.private_dns_zone_global) :
    instance => {
      name = azurerm_policy_definition.private_dns_zone_global[instance].name
      id   = azurerm_policy_definition.private_dns_zone_global[instance].id
    }
  }

  pdns_policy_ids_regional = {
    for instance in keys(azurerm_policy_definition.private_dns_zone_regional) :
    instance => {
      name = azurerm_policy_definition.private_dns_zone_regional[instance].name
      id   = azurerm_policy_definition.private_dns_zone_regional[instance].id
    }
  }

  require_tag_rg_policy_ids = {
    for instance in keys(azurerm_policy_definition.require-tag-rg) :
    instance => {
      name = azurerm_policy_definition.require-tag-rg[instance].name
      id   = azurerm_policy_definition.require-tag-rg[instance].id
    }
  }
  
  inherit_tag_from_rg_policy_ids = {
    for instance in keys(azurerm_policy_definition.inherit-tag-from-rg) :
    instance => {
      name = azurerm_policy_definition.inherit-tag-from-rg[instance].name
      id   = azurerm_policy_definition.inherit-tag-from-rg[instance].id
    }
  }

  require_tag_iaas_policy_ids = {
    for instance in keys(azurerm_policy_definition.require-tag-iaas) :
    instance => {
      name = azurerm_policy_definition.require-tag-iaas[instance].name
      id   = azurerm_policy_definition.require-tag-iaas[instance].id
    }
  }

  diag_eh_eus2 = {
    for instance in keys(azurerm_policy_definition.diag-eh-eus2) :
    instance => {
      name = azurerm_policy_definition.diag-eh-eus2[instance].name
      id   = azurerm_policy_definition.diag-eh-eus2[instance].id
    }
  }
  diag_eh_cus = {
    for instance in keys(azurerm_policy_definition.diag-eh-cus) :
    instance => {
      name = azurerm_policy_definition.diag-eh-cus[instance].name
      id   = azurerm_policy_definition.diag-eh-cus[instance].id
    }
  }

  diag_law = {
    for instance in keys(azurerm_policy_definition.diag-law) :
    instance => {
      name = azurerm_policy_definition.diag-law[instance].name
      id   = azurerm_policy_definition.diag-law[instance].id
    }
  }

  diag_eh_neu = {
    for instance in keys(azurerm_policy_definition.diag-eh-neu) :
    instance => {
      name = azurerm_policy_definition.diag-eh-neu[instance].name
      id   = azurerm_policy_definition.diag-eh-neu[instance].id
    }
  }

  diag_eh_weu = {
    for instance in keys(azurerm_policy_definition.diag-eh-weu) :
    instance => {
      name = azurerm_policy_definition.diag-eh-weu[instance].name
      id   = azurerm_policy_definition.diag-eh-weu[instance].id
    }
  }

  diag_eh_eus2_allmetrics = {
    for instance in keys(azurerm_policy_definition.diag-eh-eus2-allmetrics) :
    instance => {
      name = azurerm_policy_definition.diag-eh-eus2-allmetrics[instance].name
      id   = azurerm_policy_definition.diag-eh-eus2-allmetrics[instance].id
    }
  }

  diag_eh_cus_allmetrics = {
    for instance in keys(azurerm_policy_definition.diag-eh-cus-allmetrics) :
    instance => {
      name = azurerm_policy_definition.diag-eh-cus-allmetrics[instance].name
      id   = azurerm_policy_definition.diag-eh-cus-allmetrics[instance].id
    }
  }

  diag_law_allmetrics = {
    for instance in keys(azurerm_policy_definition.diag-law-allmetrics) :
    instance => {
      name = azurerm_policy_definition.diag-law-allmetrics[instance].name
      id   = azurerm_policy_definition.diag-law-allmetrics[instance].id
    }
  }

  diag_eh_neu_allmetrics = {
    for instance in keys(azurerm_policy_definition.diag-eh-neu-allmetrics) :
    instance => {
      name = azurerm_policy_definition.diag-eh-neu-allmetrics[instance].name
      id   = azurerm_policy_definition.diag-eh-neu-allmetrics[instance].id
    }
  }

  diag_eh_weu_allmetrics = {
    for instance in keys(azurerm_policy_definition.diag-eh-weu-allmetrics) :
    instance => {
      name = azurerm_policy_definition.diag-eh-weu-allmetrics[instance].name
      id   = azurerm_policy_definition.diag-eh-weu-allmetrics[instance].id
    }
  }
  
  sql-server-vuln-assessment = {
    for instance in keys(azurerm_policy_definition.sql-server-vuln-assessment) :
    instance => {
      name = azurerm_policy_definition.sql-server-vuln-assessment[instance].name
      id   = azurerm_policy_definition.sql-server-vuln-assessment[instance].id
    }
  }

  resource-lock-def = {
    "locks" = {
      name = azurerm_policy_definition.resource-lock-def.name
      id   = azurerm_policy_definition.resource-lock-def.id
    }
  }

  enable_all_activity_logs_policy = {
    "all_logs" = {
      name = azurerm_policy_definition.enable_all_activity_logs_policy.name
      id   = azurerm_policy_definition.enable_all_activity_logs_policy.id
    }
  }

  enable_all_activity_logs_eventhub_policy= {
    "all_logs_eh" = {
      name = azurerm_policy_definition.enable_all_activity_logs_eventhub_policy.name
      id   = azurerm_policy_definition.enable_all_activity_logs_eventhub_policy.id
    }
  }

  require-tag-values-crit = {
    "criticality" = {
      name = azurerm_policy_definition.require-tag-values-crit.name
      id   = azurerm_policy_definition.require-tag-values-crit.id
    }
  }

  require-tag-values-env = {
    "environments" = {
      name = azurerm_policy_definition.require-tag-values-env.name
      id   = azurerm_policy_definition.require-tag-values-env.id
    }
  } 

  require-tag-values-costcenter = {
    "costcenter" =  {
      name = azurerm_policy_definition.require-tag-values-costcenter.name
      id   = azurerm_policy_definition.require-tag-values-costcenter.id
    }
  } 

  storage-protection = {
    "storage_protection" = {
      name = azurerm_policy_definition.storage-protection.name
      id   = azurerm_policy_definition.storage-protection.id
    }
  } 

  require-tag-values-appowner = {
    "app_owner" = {
      name = azurerm_policy_definition.require-tag-values-appowner.name
      id   = azurerm_policy_definition.require-tag-values-appowner.id
    }
  } 
}
