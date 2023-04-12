variable "private_dns_zone_global" {
  type = map(string)
  default = {
    "privatelink.datafactory.azure.net"             = "dataFactory"
    "privatelink.database.windows.net"              = "sqlServer"
    "privatelink.dfs.core.windows.net"              = "dfs"
    "privatelink.blob.core.windows.net"             = "blob"
    "privatelink.vaultcore.azure.net"               = "vault"
    "privatelink.documents.azure.com"               = "cosmosql"
    "privatelink.cassandra.cosmos.azure.com"        = "cosmocassandra"
    "privatelink.gremlin.cosmos.azure.com"          = "cosmogremlin"
    "privatelink.table.cosmos.azure.com"            = "cosmostable"
    "privatelink.azurecr.io"                        = "registry"
    "privatelink.azurewebsites.net"                 = "sites"
    "privatelink.azure-automation.net"              = "automation"
    "privatelink.sql.azuresynapse.net"              = "synapsesql"
    "privatelink.dev.azuresynapse.net"              = "synapsedev"
    "privatelink.azuresynapse.net"                  = "synapsestudio"
    "privatelink.blob.core.windows.net"             = "blob"
    "privatelink.table.core.windows.net"            = "table"
    "privatelink.queue.core.windows.net"            = "queue"
    "privatelink.file.core.windows.net"             = "file"
    "privatelink.web.core.windows.net"              = "web"
    "privatelink.eastus2.batch.azure.com"           = "batcheastus2"
    "privatelink.centralus.batch.azure.com"         = "batchcentralus"
    "privatelink.postgres.database.azure.com"       = "postgresql"
    "privatelink.mysql.database.azure.com"          = "mysql"
    "privatelink.mariadb.database.azure.com"        = "mariadb"
    "privatelink.managedhsm.azure.net"              = "keyvaulthsm"
    "privatelink.search.windows.net"                = "search"
    "privatelink.azconfig.io"                       = "appconfig"
    "privatelink.eastus2.backup.windowsazure.com"   = "backupeastus2"
    "privatelink.centralus.backup.windowsazure.com" = "backupcentralus"
    "privatelink.siterecovery.windowsazure.com"     = "siterecovery"
    "privatelink.servicebus.windows.net"            = "servicebus"
    "privatelink.azure-devices.net"                 = "iothub"
    "privatelink.eventgrid.azure.net"               = "eventgrid"
    "privatelink.api.azureml.ms"                    = "azureml"
    "privatelink.notebooks.azure.net"               = "notebooks"
    "privatelink.service.signalr.net"               = "signalr"
    "privatelink.monitor.azure.com"                 = "monitor"
    "privatelink.oms.opinsights.azure.com"          = "oms"
    "privatelink.ods.opinsights.azure.com"          = "ods"
    "privatelink.agentsvc.azure-automation.net"     = "agentsvc"
    "privatelink.cognitiveservices.azure.com"       = "cognitiveservices"
    "privatelink.afs.azure.net"                     = "filesync"
    "privatelink.redis.cache.windows.net"           = "rediscache"
    "privatelink.redisenterprise.cache.azure.net"   = "redisenterprise"
    "privatelink.purview.azure.com"                 = "purview"
    "privatelink.purviewstudio.azure.com"           = "purviewstudio"
    "privatelink.digitaltwins.azure.net"            = "digitaltwins"
    "privatelink.azurehdinsight.net"                = "hdinsights"
    "privatelink.his.arc.azure.com"                 = "arc"
    "privatelink.guestconfiguration.azure.com"      = "arcguest"
    "privatelink.media.azure.net"                   = "mediasvcs"
  }
}

variable "private_dns_zone_regional" {
  type = list(object({
    url         = string
    subresource = string
    region      = string
    }
    )
  )
  default = [{
    url         = "privatelink.eastus2.azmk8s.io"
    subresource = "management"
    region      = "eastus2"
    },
    {
      url         = "privatelink.centralus.azmk8s.io"
      subresource = "management"
      region      = "centralus"
    },
    {
      url         = "privatelink.northeurope.azmk8s.io"
      subresource = "management"
      region      = "northeurope"
    },
    {
      url         = "privatelink.westeurope.azmk8s.io"
      subresource = "management"
      region      = "westeurope"
    }
  ]
}

variable "diag" {
  description = "List of maps for access policies needed"
  type = list(object({
    name    = string
    type    = string
    profile = string
    }
    )
  )
  default = [
    {
      name    = "Connection"
      type    = "Microsoft.Network/connections"
      profile = "connection"
    },
    {
      name    = "Firewall"
      type    = "Microsoft.Network/firewalls"
      profile = "firewall"
    },
    {
      name    = "CognitiveServices"
      type    = "Microsoft.CognitiveServices/accounts" //immersive reader and text analytics 
      profile = "cognitiveServices"
    },
    {
      name    = "ContainerRegistryRegistries"
      type    = "Microsoft.ContainerRegistry/registries"
      profile = "containerRegistryRegistries"
    },
    {
      name    = "ContainerServiceManagedClusters"
      type    = "Microsoft.ContainerService/managedClusters"
      profile = "containerServiceManagedClusters"
    },
    {
      name    = "DatabricksWorkspaces"
      type    = "Microsoft.Databricks/workspaces"
      profile = "databricksWorkspaces"
    },
    {
      name    = "DataFactoryFactories"
      type    = "Microsoft.DataFactory/factories"
      profile = "dataFactoryFactories"
    },
    {
      name    = "EventHubNamespaces"
      type    = "Microsoft.EventHub/namespaces"
      profile = "eventHubNamespaces"
    },
    {
      name    = "InsightsComponents"
      type    = "Microsoft.Insights/components" //components/web?
      profile = "insightsComponents"
    },
    {
      name    = "LogicWorkflows"
      type    = "Microsoft.Logic/workflows"
      profile = "logicWorkflows"
    },
    {
      name    = "expressRouteCircuits"
      type    = "Microsoft.Network/expressRouteCircuits"
      profile = "expressRouteCircuits"
    },
    {
      name    = "frontDoors"
      type    = "Microsoft.Network/frontDoors"
      profile = "frontDoors"
    },
    {
      name    = "loadBalancers"
      type    = "Microsoft.Network/loadBalancers"
      profile = "loadBalancers"
    },
    {
      name    = "virtualNetworkGateways"
      type    = "Microsoft.Network/virtualNetworkGateways"
      profile = "virtualNetworkGateways"
    },
    {
      name    = "networkSecurityGroups"
      type    = "Microsoft.Network/networkSecurityGroups"
      profile = "networkSecurityGroups"
    },
    {
      name    = "publicIPAddresses"
      type    = "Microsoft.Network/publicIPAddresses"
      profile = "publicIPAddresses"
    },
    {
      name    = "trafficmanagerprofiles"
      type    = "Microsoft.Network/trafficmanagerprofiles"
      profile = "trafficmanagerprofiles"
    },
    {
      name    = "OperationalInsightsWorkspaces"
      type    = "Microsoft.OperationalInsights/workspaces"
      profile = "workspaces"
    },
    {
      name    = "RecoveryServicesVaults"
      type    = "Microsoft.RecoveryServices/vaults"
      profile = "RecoveryServicesVaults"
    },
    {
      name    = "SqlserversDatabases"
      type    = "Microsoft.Sql/servers/databases" //v12.0 system, user, vcore serverless
      profile = "sqlserversDatabases"
    },
    {
      name    = "SqlServers"
      type    = "Microsoft.Sql/servers"
      profile = "sqlServers"
    },
    {
      name    = "Serverfarms"
      type    = "Microsoft.Web/serverfarms" //elastic, functionapp, linux 
      profile = "serverfarms"
    },
    {
      name    = "SitesFunctions"
      type    = "Microsoft.Web/sites/functions" //functionapp, linux
      profile = "sitesFunctions"
    },
    {
      name    = "Sites"
      type    = "Microsoft.Web/sites"
      profile = "sites"
    },
    {
      name    = "applicationGateways"
      type    = "Microsoft.Network/applicationGateways"
      profile = "applicationGateways"
    },
    {
      name    = "VirtualNetworks"
      type    = "Microsoft.Network/virtualNetworks"
      profile = "virtualnetworks"
    },
    {
      name    = "AutomationAccounts"
      type    = "Microsoft.Automation/automationAccounts"
      profile = "automationaccounts"
    },
    {
      name    = "BastionHosts"
      type    = "Microsoft.Network/bastionHosts"
      profile = "bastionhosts"
    },
    {
      name    = "Vaults"
      type    = "Microsoft.KeyVault/vaults"
      profile = "vaults"
    },
    {
      name    = "PrivateDNSZones"
      type    = "Microsoft.Network/privateDnsZones"
      profile = "privatednszones"
    }
  ]
}


variable "diag_all_metrics_only" {
  description = "List of maps for access policies needed"
  type = list(object({
    name    = string
    type    = string
    profile = string
    }
    )
  )
  default = [
    {
      name    = "VirtualMachines"
      type    = "Microsoft.Compute/virtualMachines"
      profile = "virtualMachines"
    },
    {
      name    = "RedisEnterprise"
      type    = "Microsoft.Cache/redisEnterprise"
      profile = "redisEnterprise"
    }
  ]
}


variable "diag_logs_only" {
  description = "List of resources that contain only logs for diagnostic settings"
  type = list(string)
  default = [
    "networkSecurityGroups"
  ]
}

#  Do not add these to diag variable as they are not supported
#  {
#       name    = "ComputeDisks"
#       type    = "Microsoft.Compute/disks"
#       profile = "computeDisks"
#     },
# {
#     name    = "privateEndpoints"
#     type    = "Microsoft.Network/privateEndpoints"
#     profile = "privateEndpoints"
#   },
#  {
#       name    = "networkInterfaces"
#       type    = "Microsoft.Network/networkInterfaces"
#       profile = "networkInterfaces"
#     },
# {
#     name    = "privateDnsZones"
#     type    = "Microsoft.Network/privateDnsZones"
#     profile = "privateDnsZones"
#   },


variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy definitions"
  default     = "ANF"
}

variable "mandatory_tag_keys" {
  type        = list(string)
  description = "List of mandatory tag keys used by policies 'addTagToRG','inheritTagFromRG','bulkAddTagsToRG','bulkInheritTagsFromRG'"
  default = [
    "anf-cost_center",
    "anf-app_owner",
    "anf-application",
    "anf-region",
    "anf-environment",
    "anf-business_criticality",
  ]

}

variable "locations" {
  type        = list(any)
  description = "Needed for  Diagnostics settings  - add additional regions as more come online"
  default = [
    "East US 2",
    "Central US"
  ]
}

variable "cs-mgmt-lock-tag"{
  type = string
  description = "Tag key for policy to set resource locks on management resources (Azure Guardrails)"
  default = "mgmt-lock-required"
}

variable "cs-mgmt-lock-tag-value"{
  type = string
  description = "Tag value for policy to set resource locks on management resources (Azure Guardrails)"
  default = "yes"
}

variable "tag-anf-environment-values" {
  type        = list(any)
  description = "List of mandatory tag keys used by policy 'require-tag-values-env''"
  default = [
    "bx",
    "cq",
    "dm",
    "dr",
    "dv",
    "np",
    "pp",
    "pr",
    "qa",
    "sb",
    "tr",
    "ts",
    "tu"
  ]
}

variable "tag-anf-costcenter-values" {
  type        = list(any)
  description = "List of mandatory tag keys used by policy 'require-tag-values-costcenter''"
  default = [
    "57356-8208",
    "57355-8208",
    "57352-8208",
    "57353-8209",
    "57350-8209",
    "57361-8207",
    "57359-8207",
    "57351-8203",
    "57358-8200",
    "57359-8207",
    "57361-8207",
    "57353-8208",
    "57353-8205",
    "57354-8203",
    "57360-8206",
    "57363-8206",
    "57353-8206",
    "57358-8200",
    "57365-8205",
    "57366-8205",
    "57364-8205",
    "57353-8206",
    "57362-8205",
    "57357-8205",
    "57353-8204",
    "54601-6932"
  ]
}

variable "tag-anf-business-criticality-values" {
  type        = list(any)
  description = "List of mandatory tag keys used by policy 'require-tags-multiple-values''"
  default = [
    "low",
    "Low",
    "medium",
    "Medium",
    "high",
    "High",
    "business unit-critical",
    "Business unit-critical",
    "mission-critical",
    "Mission-critical"
  ]
}

variable "tag-anf-storage-account-data-protection-key" {
  type        = string
  description = "Tag used by 'az-st-protection' policy for auditing Storage Account SKU"
  default     = "anf-data-protection"
}

variable "tag-anf-storage-account-data-protection-values" {
  type        = list(any)
  description = "List of mandatory tag keys used by 'az-st-protection' policy for auditing Storage Account SKU"
  default = [
    "yes"
  ]
}

variable "policy_definition_category" {
  type        = string
  description = "The category to use for all Policy Definitions"
  default     = "Custom"
}

variable "allowed-resource-location-azp" {
  type        = list(any)
  description = "List of allowed locations for EUS2 and paired region"
  default = [
    "East US 2",
    "Central US",
    "Southeast Asia"
  ]
}

variable "allowed-resource-location-eus2" {
  type        = list(any)
  description = "List of allowed locations for EUS2 and paired region"
  default = [
    "East US 2",
    "Central US"
  ]
}

variable "allowed-resource-location-seas" {
  type        = list(any)
  description = "List of allowed locations for seas region"
  default = [
    "Southeast Asia",
    "southeastasia"
  ]
}

variable "allowed-resource-location-eur" {
  type        = list(any)
  description = "List of allowed locations for West Europe and paired region"
  default = [
    "West Europe",
    "westeurope",
    "North Europe",
    "northeurope"
  ]

}
variable "allowed-resource-location-ea" {
  type        = list(any)
  description = "List of allowed locations for Eastasia and paired region"
    default = [
    "East Asia",
    "eastasia",
    "Southeast Asia",
    "southeastasia"
  ]
}

variable "law_regions" {
  type = map(object(
    {
      law_id    = string
      law_name  = string
      region   = string
      context1 = string
      context2 = string
    }
  ))
  description = "Map of regions and their respective LogAnalyticsWorkspace information for dynamically creating diagnostic policies"
  default = {
    "eus2" = {
      law_id    = "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourcegroups/ioa-mgmt-pr-rg/providers/microsoft.operationalinsights/workspaces/ioa-mgmt-pr-law"
      law_name  = "ioa-mgmt-pr-law"
      region   = "East US 2"
      context1 = "-eus2"
      context2 = " East US 2" #Leading space is intentional
    },
    "cus" = {
      law_id    = "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourcegroups/ioa-mgmt-pr-rg-cus/providers/microsoft.operationalinsights/workspaces/ioa-mgmt-pr-law-cus"
      law_name  = "ioa-mgmt-pr-law-cus"
      region   = "Central US"
      context1 = "-cus"
      context2 = " Central US" #Leading space is intentional
  }
 }
}

variable "mgmt-grp-def" {
  type        = string
  description = "Where all policy defs get stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp"
}

# Use in newer r_diag-<resource>.tf files to dynamically create Event Hub diagnostic policies instead of copying/pasting
variable "eventhub_regions" {
  type = map(object(
    {
      eh_id    = string
      eh_name  = string
      region   = string
      context1 = string
      context2 = string
    }
  ))
  description = "Map of regions and their respective Event Hub information for dynamically creating diagnostic policies"
  default = {
    "eus2" = {
      eh_id    = "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns/AuthorizationRules/RootManageSharedAccessKey"
      eh_name  = "ioa-mgmt-pr-evh-02"
      region   = "East US 2"
      context1 = ""
      context2 = ""
    },

    "cus" = {
      eh_id    = "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg-cus/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns-cus/AuthorizationRules/RootManageSharedAccessKey"
      eh_name  = "ioa-mgmt-pr-evh-cus"
      region   = "Central US"
      context1 = "-cus"
      context2 = " Central US" #Leading space is intentional
    },
     "neu" = {
      eh_id    = "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg-neu/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns-neu/AuthorizationRules/RootManageSharedAccessKey"
      eh_name  = "ioa-mgmt-pr-evh-neu"
      region   = "North Europe"
      context1 = "-neu"
      context2 = " North Europe" #Leading space is intentional
    },
     "weu" = {
      eh_id    = "/subscriptions/ef4504be-fcd8-4642-a937-39e90e9731ec/resourceGroups/ioa-mgmt-pr-rg-weu/providers/Microsoft.EventHub/namespaces/ioa-mgmt-pr-evhns-weu/AuthorizationRules/RootManageSharedAccessKey"
      eh_name  = "ioa-mgmt-pr-evh-weu"
      region   = "West Europe"
      context1 = "-weu"
      context2 = " Central Europe" #Leading space is intentional
    },
  }
}

variable "iaas_tag_keys" {
  type        = list(any)
  description = "List of mandatory tags for iaas VMs"
  default = [
    "anf-nbu_policy"
  ]
}

variable "nbu-name-patterns" {
  type        = list(any)
  description = "List of prefixes for VM name matching used by policy require nbu tag values"
  default = [
    "sa*",
    "su*",
    "sw*"
  ]
}

variable "allowed-resource-types" {
  type        = list(string)
  description = "List of allowed resource types"
  default = [
    "microsoft.network/localnetworkgateways",
    "microsoft.network/locations/checkacceleratednetworkingsupport",
    "microsoft.network/locations/commitinternalazurenetworkmanagerconfiguration",
    "microsoft.network/locations/getazurenetworkmanagerconfiguration",
    "microsoft.network/locations/setazurenetworkmanagerconfiguration",
    "microsoft.network/locations/virtualnetworkavailableendpointservices",
    "microsoft.network/networkexperimentprofiles",
    "microsoft.network/networkexperimentprofiles/experiments",
    "microsoft.network/networkintentpolicies",
    "microsoft.network/networkinterfaces",
    "microsoft.network/networkinterfaces/tapconfigurations",
    "microsoft.network/networkmanagers",
    "microsoft.network/networkprofiles",
    "microsoft.network/networksecuritygroups",
    "microsoft.network/networksecuritygroups/securityrules",
    "microsoft.network/networkvirtualappliances",
    "microsoft.network/networkvirtualapplianceskus",
    "microsoft.network/networkwatchers",
    "microsoft.network/networkwatchers/connectionmonitors",
    "microsoft.network/networkwatchers/flowlogs",
    "microsoft.network/networkwatchers/lenses",
    "microsoft.network/networkwatchers/packetcaptures",
    "microsoft.network/networkwatchers/pingmeshes",
    "microsoft.network/privatednszones/virtualnetworklinks",
    "microsoft.network/virtualhubs/hubvirtualnetworkconnections",
    "microsoft.network/virtualnetworkgateways",
    "microsoft.network/virtualnetworks",
    "microsoft.network/virtualnetworks/networkmanagereffectiveconfigurations",
    "microsoft.network/virtualnetworks/privatednszonelinks",
    "microsoft.network/virtualnetworks/subnets",
    "microsoft.network/virtualnetworks/taggedtrafficconsumers",
    "microsoft.network/virtualnetworks/virtualnetworkpeerings",
    "microsoft.network/virtualnetworktaps",
    "microsoft.network/p2svpngateways",
    "microsoft.network/vpngateways",
    "microsoft.network/vpngateways/vpnconnections",
    "microsoft.storage/storageaccounts",
    "microsoft.storage/storageaccounts/blobservices",
    "microsoft.storage/storageaccounts/blobservices/containers/immutabilitypolicies",
    "microsoft.storage/storageaccounts/encryptionscopes",
    "microsoft.storage/storageaccounts/fileservices",
    "microsoft.storage/storageaccounts/fileservices/shares",
    "microsoft.storage/storageaccounts/inventorypolicies",
    "microsoft.storage/storageaccounts/listaccountsas",
    "microsoft.storage/storageaccounts/listservicesas",
    "microsoft.storage/storageaccounts/managementpolicies",
    "microsoft.storage/storageaccounts/objectreplicationpolicies",
    "microsoft.storage/storageaccounts/privateendpointconnectionproxies",
    "microsoft.storage/storageaccounts/privateendpointconnections",
    "microsoft.storage/storageaccounts/queueservices",
    "microsoft.storage/storageaccounts/queueservices/queues",
    "microsoft.storage/storageaccounts/services",
    "microsoft.storage/storageaccounts/services/metricdefinitions",
    "microsoft.storage/storageaccounts/tableservices",
    "microsoft.storage/storageaccounts/tableservices/tables",
    "microsoft.network/azurefirewalls",
    "microsoft.network/firewallpolicies/rulegroups",
    "microsoft.network/firewallpolicies/rulecollectiongroups",
    "microsoft.network/firewallpolicies",
    "microsoft.network/azurefirewallfqdntags",
    "microsoft.network/applicationsecuritygroups",
    "microsoft.network/dnsoperationresults",
    "microsoft.network/dnsoperationstatuses",
    "microsoft.network/dnszones",
    "microsoft.network/dnszones/a",
    "microsoft.network/dnszones/aaaa",
    "microsoft.network/dnszones/all",
    "microsoft.network/dnszones/caa",
    "microsoft.network/dnszones/cname",
    "microsoft.network/dnszones/mx",
    "microsoft.network/dnszones/ns",
    "microsoft.network/dnszones/ptr",
    "microsoft.network/dnszones/recordsets",
    "microsoft.network/dnszones/soa",
    "microsoft.network/dnszones/srv",
    "microsoft.network/dnszones/txt",
    "microsoft.network/getdnsresourcereference",
    "microsoft.network/locations/checkdnsnameavailability",
    "microsoft.network/privatednsoperationresults",
    "microsoft.network/privatednsoperationstatuses",
    "microsoft.network/privatednszones",
    "microsoft.network/privatednszones/a",
    "microsoft.network/privatednszones/aaaa",
    "microsoft.network/privatednszones/all",
    "microsoft.network/privatednszones/cname",
    "microsoft.network/privatednszones/mx",
    "microsoft.network/privatednszones/ptr",
    "microsoft.network/privatednszones/soa",
    "microsoft.network/privatednszones/srv",
    "microsoft.network/privatednszones/txt",
    "microsoft.network/privatednszonesinternal",
    "microsoft.network/privateendpoints/privatednszonegroups",
    "microsoft.network/routetables",
    "microsoft.network/routetables/routes",
    "microsoft.network/routefilters/routefilterrules",
    "microsoft.network/routefilters",
    "microsoft.network/virtualhubs/hubroutetables",
    "microsoft.network/virtualhubs/routetables",
    "microsoft.network/virtualrouters/peerings",
    "microsoft.network/virtualrouters",
    "microsoft.security/discoveredsecuritysolutions",
    "microsoft.security/devicesecuritygroups",
    "microsoft.security/externalsecuritysolutions",
    "microsoft.security/locations/discoveredsecuritysolutions",
    "microsoft.security/locations/externalsecuritysolutions",
    "microsoft.security/locations/securitysolutions",
    "microsoft.security/locations/securitysolutionsreferencedata",
    "microsoft.security/securitysolutions",
    "microsoft.security/securitysolutionsreferencedata",
    "microsoft.security/securitystatuses",
    "microsoft.security/securitystatusessummaries",
    "microsoft.authorization/policyassignments",
    "microsoft.authorization/policydefinitions",
    "microsoft.authorization/policyexemptions",
    "microsoft.authorization/policysetdefinitions",
    "microsoft.authorization/datapolicymanifests",
    "microsoft.workloadmonitor/monitors",
    "microsoft.costmanagement/billingaccounts",
    "microsoft.costmanagement/externalbillingaccounts",
    "microsoft.costmanagement/externalbillingaccounts/alerts",
    "microsoft.costmanagement/externalbillingaccounts/dimensions",
    "microsoft.costmanagement/externalbillingaccounts/forecast",
    "microsoft.costmanagement/externalbillingaccounts/query",
    "microsoft.authorization/roleassignments",
    "microsoft.authorization/roledefinitions",
    "microsoft.authorization/roleassignmentsusagemetrics",
    "microsoft.authorization/findorphanroleassignments",
    "microsoft.portal/dashboards",
    "microsoft.resources/resourcegroups",
    "microsoft.resources/resources",
    "Microsoft.resources/tags/write",
    "Microsoft.resources/tags/read",
    "Microsoft.resources/tags/delete",
    "microsoft.resources/subscriptions/resourcegroups",
    "microsoft.resources/subscriptions/resourcegroups/resources",
    "microsoft.resources/subscriptions/resources",
    "microsoft.resources/notifyresourcejobs",
    "microsoft.resources/checkresourcename",
    "microsoft.automation/automationaccounts",
    "microsoft.automation/automationaccounts/certificates",
    "microsoft.automation/automationaccounts/compilationjobs",
    "microsoft.automation/automationaccounts/configurations",
    "microsoft.automation/automationaccounts/connections",
    "microsoft.automation/automationaccounts/connectiontypes",
    "microsoft.automation/automationaccounts/credentials",
    "microsoft.automation/automationaccounts/jobs",
    "microsoft.automation/automationaccounts/modules",
    "microsoft.automation/automationaccounts/jobschedules",
    "microsoft.automation/automationaccounts/nodeconfigurations",
    "microsoft.automation/automationaccounts/privateendpointconnectionproxies",
    "microsoft.automation/automationaccounts/privateendpointconnections",
    "microsoft.automation/automationaccounts/privatelinkresources",
    "microsoft.automation/automationaccounts/python2packages",
    "microsoft.automation/automationaccounts/runbooks",
    "microsoft.automation/automationaccounts/schedules",
    "microsoft.automation/automationaccounts/softwareupdateconfigurations",
    "microsoft.automation/automationaccounts/variables",
    "microsoft.automation/automationaccounts/watchers",
    "microsoft.automation/automationaccounts/webhooks",
    "microsoft.network/bastionhosts",
    "microsoft.network/connections",
    "microsoft.network/privateendpoints",
    "microsoft.network/publicipprefixes",
    "microsoft.network/publicipaddresses",
    "microsoft.network/privatelinkservices/privateendpointconnections",
    "microsoft.network/privatelinkservices",
    "microsoft.network/privateendpoints/privatelinkserviceproxies",
    "microsoft.network/applicationgatewayavailablerequestheaders",
    "microsoft.network/applicationgatewayavailableresponseheaders",
    "microsoft.network/applicationgatewayavailableservervariables",
    "microsoft.network/applicationgatewayavailablessloptions",
    "microsoft.network/applicationgatewayavailablewafrulesets",
    "microsoft.network/applicationgateways",
    "microsoft.network/applicationgateways/privateendpointconnections",
    "microsoft.network/applicationgatewaywebapplicationfirewallpolicies",
    "microsoft.network/azurewebcategories",
    "microsoft.network/bgpservicecommunities",
    "microsoft.network/checkfrontdoornameavailability",
    "microsoft.network/checktrafficmanagernameavailability",
    "microsoft.network/customipprefixes",
    "microsoft.network/ddoscustompolicies",
    "microsoft.network/ddosprotectionplans",
    "microsoft.network/loadbalancers",
    "microsoft.network/loadbalancers/backendaddresspools",
    "microsoft.network/loadbalancers/inboundnatrules",
    "microsoft.network/privateendpointredirectmaps",
    "microsoft.operationalinsights/clusters",
    "microsoft.operationalinsights/deletedworkspaces",
    "microsoft.operationalinsights/linktargets",
    "microsoft.operationalinsights/locations",
    "microsoft.operationalinsights/locations/operationstatuses",
    "microsoft.operationalinsights/operations",
    "microsoft.operationalinsights/querypacks",
    "microsoft.operationalinsights/storageinsightconfigs",
    "microsoft.operationalinsights/workspaces",
    "microsoft.operationalinsights/workspaces/dataexports",
    "microsoft.operationalinsights/workspaces/datasources",
    "microsoft.operationalinsights/workspaces/linkedservices",
    "microsoft.operationalinsights/workspaces/linkedstorageaccounts",
    "microsoft.operationalinsights/workspaces/metadata",
    "microsoft.operationalinsights/workspaces/query",
    "microsoft.operationalinsights/workspaces/savedsearches",
    "microsoft.operationalinsights/workspaces/scopedprivatelinkproxies",
    "microsoft.operationalinsights/workspaces/storageinsightconfigs",
    "microsoft.operationalinsights/workspaces/tables",
    "microsoft.operationalinsights/workspaces/views",
    "microsoft.operationsmanagement/managementassociations",
    "microsoft.operationsmanagement/managementconfigurations",
    "microsoft.operationsmanagement/operations",
    "microsoft.operationsmanagement/solutions",
    "microsoft.operationsmanagement/views",
    "microsoft.peering/checkserviceprovideravailability",
    "microsoft.peering/legacypeerings",
    "microsoft.peering/operations",
    "microsoft.peering/peerasns",
    "microsoft.peering/peeringlocations",
    "microsoft.peering/peerings",
    "microsoft.peering/peeringservicecountries",
    "microsoft.peering/peeringservicelocations",
    "microsoft.peering/peeringserviceproviders",
    "microsoft.peering/peeringservices",
    "microsoft.keyvault/deletedvaults",
    "microsoft.keyvault/locations/deletedvaults",
    "microsoft.keyvault/vaults",
    "microsoft.keyvault/vaults/accesspolicies",
    "microsoft.keyvault/vaults/eventgridfilters",
    "microsoft.keyvault/vaults/keys",
    "microsoft.keyvault/vaults/keys/versions",
    "microsoft.keyvault/vaults/privateendpointconnections",
    "microsoft.keyvault/vaults/secrets",
    "microsoft.recoveryservices/vaults",
    "microsoft.recoveryservices/vaults/backupconfig",
    "microsoft.recoveryservices/vaults/backupfabrics/backupprotectionintent",
    "microsoft.recoveryservices/vaults/backupfabrics/protectioncontainers",
    "microsoft.recoveryservices/vaults/backupfabrics/protectioncontainers/protecteditems",
    "microsoft.recoveryservices/vaults/backuppolicies",
    "microsoft.recoveryservices/vaults/backupstorageconfig",
    "microsoft.recoveryservices/vaults/extendedinformation",
    "microsoft.recoveryservices/vaults/replicationfabrics",
    "microsoft.recoveryservices/vaults/replicationfabrics/replicationnetworks/replicationnetworkmappings",
    "microsoft.recoveryservices/vaults/replicationfabrics/replicationprotectioncontainers/replicationmigrationitems",
    "microsoft.recoveryservices/vaults/replicationfabrics/replicationprotectioncontainers/replicationprotecteditems",
    "microsoft.recoveryservices/vaults/replicationfabrics/replicationprotectioncontainers/replicationprotectioncontainermappings",
    "microsoft.recoveryservices/vaults/replicationfabrics/replicationstorageclassifications/replicationstorageclassificationmappings",
    "microsoft.recoveryservices/vaults/replicationfabrics/replicationvcenters",
    "microsoft.recoveryservices/vaults/replicationrecoveryplans",
    "microsoft.recoveryservices/vaults/replicationvaultsettings",
    "microsoft.authorization/checkaccess",
    "microsoft.authorization/locks",
    "microsoft.authorization/operations",
    "microsoft.authorization/operationstatus",
    "microsoft.authorization/permissions",
    "microsoft.authorization/accessreviewscheduledefinitions",
    "microsoft.authorization/accessreviewschedulesettings",
    "microsoft.authorization/classicadministrators",
    "microsoft.authorization/dataaliases",
    "microsoft.authorization/denyassignments",
    "microsoft.authorization/elevateaccess",
    "microsoft.authorization/privatelinkassociations",
    "microsoft.authorization/provideroperations",
    "microsoft.authorization/resourcemanagementprivatelinks",
    "microsoft.automation/operations",
    "microsoft.keyvault/checknameavailability",
    "microsoft.keyvault/hsmpools",
    "microsoft.keyvault/locations",
    "microsoft.keyvault/locations/deletevirtualnetworkorsubnets",
    "microsoft.keyvault/locations/operationresults",
    "microsoft.keyvault/managedhsms",
    "microsoft.keyvault/operations",
    "microsoft.network/ipallocations",
    "microsoft.network/ipgroups",
    "microsoft.network/ipgroups/read",
    "microsoft.network/ipgroups/write",
    "microsoft.network/ipgroups/validate/action",
    "microsoft.network/ipgroup/updateReferences/action",
    "microsoft.network/ipgroups/join/action",
    "microsoft.network/ipgroups/delete",
    "microsoft.network/internalnotify",
    "microsoft.network/locations",
    "microsoft.network/locations/autoapprovedprivatelinkservices",
    "microsoft.network/locations/availabledelegations",
    "microsoft.network/locations/availableprivateendpointtypes",
    "microsoft.network/locations/availableservicealiases",
    "microsoft.network/locations/checkprivatelinkservicevisibility",
    "microsoft.network/locations/effectiveresourceownership",
    "microsoft.network/locations/servicetags",
    "microsoft.network/locations/privatelinkservices",
    "microsoft.network/locations/operations",
    "microsoft.network/locations/operationresults",
    "microsoft.insights/vminsightsonboardingstatuses",
    "microsoft.compute/virtualmachines",
    "microsoft.compute/virtualmachines/extensions",
    "microsoft.compute/locations/virtualmachines",
    "microsoft.compute/virtualmachines/metricdefinitions",
    "microsoft.compute/virtualmachines/runcommands",
    "microsoft.compute/locations/virtualmachinescalesets",
    "microsoft.compute/virtualmachinescalesets",
    "microsoft.compute/virtualmachinescalesets/extensions",
    "microsoft.compute/virtualmachinescalesets/networkinterfaces",
    "microsoft.compute/virtualmachinescalesets/publicipaddresses",
    "microsoft.compute/virtualmachinescalesets/virtualmachines",
    "microsoft.compute/virtualmachinescalesets/virtualmachines/extensions",
    "microsoft.compute/virtualmachinescalesets/virtualmachines/networkinterfaces",
    "microsoft.compute/virtualmachinescalesets/virtualmachines/runcommands",
    "microsoft.compute/disks",
    "microsoft.compute/availabilitysets",
    "microsoft.compute/capacityreservationgroups",
    "microsoft.compute/capacityreservationgroups/capacityreservations",
    "microsoft.compute/cloudservices",
    "microsoft.compute/cloudservices/networkinterfaces",
    "microsoft.compute/cloudservices/publicipaddresses",
    "microsoft.compute/cloudservices/roleinstances",
    "microsoft.compute/cloudservices/roleinstances/networkinterfaces",
    "microsoft.compute/cloudservices/roles",
    "microsoft.compute/diskaccesses",
    "microsoft.compute/diskencryptionsets",
    "microsoft.compute/galleries",
    "microsoft.compute/galleries/applications",
    "microsoft.compute/galleries/applications/versions",
    "microsoft.compute/galleries/images",
    "microsoft.compute/galleries/images/versions",
    "microsoft.compute/hostgroups",
    "microsoft.compute/hostgroups/hosts",
    "microsoft.compute/images",
    "microsoft.compute/locations",
    "microsoft.compute/locations/artifactpublishers",
    "microsoft.compute/locations/capsoperations",
    "microsoft.compute/locations/csoperations",
    "microsoft.compute/locations/diskoperations",
    "microsoft.compute/locations/edgezones",
    "microsoft.compute/locations/edgezones/publishers",
    "microsoft.compute/locations/galleries",
    "microsoft.compute/locations/loganalytics",
    "microsoft.compute/locations/operations",
    "microsoft.compute/locations/publishers",
    "microsoft.compute/locations/runcommands",
    "microsoft.compute/locations/spotevictionrates",
    "microsoft.compute/locations/spotpricehistory",
    "microsoft.compute/locations/systeminfo",
    "microsoft.compute/locations/usages",
    "microsoft.compute/locations/vmsizes",
    "microsoft.compute/locations/vsmoperations",
    "microsoft.compute/operations",
    "microsoft.compute/proximityplacementgroups",
    "microsoft.compute/restorepointcollections",
    "microsoft.compute/restorepointcollections/restorepoints",
    "microsoft.compute/sharedvmextensions",
    "microsoft.compute/sharedvmextensions/versions",
    "microsoft.compute/sharedvmimages",
    "microsoft.compute/sharedvmimages/versions",
    "microsoft.compute/snapshots",
    "microsoft.compute/sshpublickeys",
    "microsoft.alertsmanagement/actionrules",
    "microsoft.insights/actiongroups",
    "microsoft.insights/transactions",
    "Microsoft.Insights/workbooks",
    "microsoft.insights/workbooks/write",
    "microsoft.insights/workbooks/delete",
    "microsoft.insights/workbooks/read",
    "microsoft.insights/workbooks/revisions/read",
    "microsoft.securityinsights/alertrules/actions",
    "microsoft.alertsmanagement/alerts",
    "microsoft.alertsmanagement/alertslist",
    "microsoft.alertsmanagement/alertsmetadata",
    "microsoft.alertsmanagement/alertssummary",
    "microsoft.alertsmanagement/resourcehealthalertrules",
    "microsoft.alertsmanagement/alertssummarylist",
    "microsoft.alertsmanagement/smartdetectoralertrules",
    "microsoft.costmanagement/alerts",
    "microsoft.costmanagement/externalsubscriptions/alerts",
    "microsoft.security/alerts",
    "microsoft.security/autodismissalertsrules",
    "microsoft.containerregistry/registries",
    "microsoft.containerregistry/registries/replications",
    "microsoft.eventhub/namespaces",
    "microsoft.security/alertssuppressionrules",
    "microsoft.security/iotalerts",
    "microsoft.security/iotsecuritysolutions/analyticsmodels/aggregatedalerts",
    "microsoft.security/locations/alerts",
    "microsoft.security/iotsecuritysolutions/iotalerts",
    "microsoft.storsimple/managers/devices/alertsettings",
    "microsoft.insights/activitylogalerts",
    "microsoft.insights/metricalerts",
    "microsoft.recoveryservices/vaults/replicationalertsettings",
    "microsoft.insights/logdefinitions",
    "microsoft.insights/logprofiles",
    "microsoft.insights/logs",
    "microsoft.insights/topology",
    "microsoft.resources/deploymentscripts/logs",
    "microsoft.security/automations",
    "microsoft.insights/scheduledqueryrules"
  ]
}


variable "allowed-vm-sku-sed" {
  type        = list(string)
  description = "List of allowed VM SKUs for SED"
  default = [
    "Standard_D16_v4",
    "Standard_D16_v5",
    "Standard_D16as_v5",
    "Standard_D16s_v4",
    "Standard_D16s_v5",
    "Standard_D2_v4",
    "Standard_D2_v5",
    "Standard_D2as_v5",
    "Standard_D2s_v4",
    "Standard_D2s_v5",
    "Standard_D32_v4",
    "Standard_D32_v5",
    "Standard_D32as_v5",
    "Standard_D32s_v4",
    "Standard_D32s_v5",
    "Standard_D4_v4",
    "Standard_D4_v5",
    "Standard_D48_v4",
    "Standard_D48_v5",
    "Standard_D48as_v5",
    "Standard_D48s_v4",
    "Standard_D48s_v5",
    "Standard_D4as_v5",
    "Standard_D4s_v4",
    "Standard_D4s_v5",
    "Standard_D64_v4",
    "Standard_D64_v5",
    "Standard_D64as_v5",
    "Standard_D64s_v4",
    "Standard_D64s_v5",
    "Standard_D8_v4",
    "Standard_D8_v5",
    "Standard_D8as_v5",
    "Standard_D8s_v4",
    "Standard_D8s_v5",
    "Standard_D96_v5",
    "Standard_D96as_v5",
    "Standard_D96s_v5",
    "Standard_DC16as_v5",
    "Standard_DC2as_v5",
    "Standard_DC32as_v5",
    "Standard_DC48as_v5",
    "Standard_DC4as_v5",
    "Standard_DC64as_v5",
    "Standard_DC8as_v5",
    "Standard_DC96as_v5",
    "Standard_E104i_v5",
    "Standard_E104is_v5",
    "Standard_E112ias_v5",
    "Standard_E16_v4",
    "Standard_E16_v5",
    "Standard_E16-4as_v5",
    "Standard_E16-4s_v4",
    "Standard_E16-4s_v5",
    "Standard_E16-8as_v5",
    "Standard_E16-8s_v4",
    "Standard_E16-8s_v5",
    "Standard_E16as_v5",
    "Standard_E16s_v4",
    "Standard_E16s_v5",
    "Standard_E2_v4",
    "Standard_E2_v5",
    "Standard_E20_v4",
    "Standard_E20_v5",
    "Standard_E20as_v5",
    "Standard_E20s_v4",
    "Standard_E20s_v5",
    "Standard_E2as_v5",
    "Standard_E2s_v4",
    "Standard_E2s_v5",
    "Standard_E32_v4",
    "Standard_E32_v5",
    "Standard_E32-16as_v5",
    "Standard_E32-16s_v4",
    "Standard_E32-16s_v5",
    "Standard_E32-8as_v5",
    "Standard_E32-8s_v4",
    "Standard_E32-8s_v5",
    "Standard_E32as_v5",
    "Standard_E32s_v4",
    "Standard_E32s_v5",
    "Standard_E4_v4",
    "Standard_E4_v5",
    "Standard_E4-2as_v5",
    "Standard_E4-2s_v4",
    "Standard_E4-2s_v5",
    "Standard_E48_v4",
    "Standard_E48_v5",
    "Standard_E48as_v5",
    "Standard_E48s_v4",
    "Standard_E48s_v5",
    "Standard_E4as_v5",
    "Standard_E4s_v4",
    "Standard_E4s_v5",
    "Standard_E64_v4",
    "Standard_E64_v5",
    "Standard_E64-16as_v5",
    "Standard_E64-16s_v4",
    "Standard_E64-16s_v5",
    "Standard_E64-32as_v5",
    "Standard_E64-32s_v4",
    "Standard_E64-32s_v5",
    "Standard_E64as_v5",
    "Standard_E64s_v4",
    "Standard_E64s_v5",
    "Standard_E8_v4",
    "Standard_E8_v5",
    "Standard_E8-2as_v5",
    "Standard_E8-2s_v4",
    "Standard_E8-2s_v5",
    "Standard_E8-4as_v5",
    "Standard_E8-4s_v4",
    "Standard_E8-4s_v5",
    "Standard_E80is_v4",
    "Standard_E8as_v5",
    "Standard_E8s_v4",
    "Standard_E8s_v5",
    "Standard_E96_v5",
    "Standard_E96-24as_v5",
    "Standard_E96-24s_v5",
    "Standard_E96-48as_v5",
    "Standard_E96-48s_v5",
    "Standard_E96as_v5",
    "Standard_E96s_v5",
    "Standard_EC16as_v5",
    "Standard_EC20as_v5",
    "Standard_EC2as_v5",
    "Standard_EC32as_v5",
    "Standard_EC48as_v5",
    "Standard_EC4as_v5",
    "Standard_EC64as_v5",
    "Standard_EC8as_v5",
    "Standard_EC96as_v5",
    "Standard_EC96ias_v5",
    "Standard_M128ms_v2",
    "Standard_M128s_v2",
    "Standard_M192ims_v2",
    "Standard_M192is_v2",
    "Standard_M32ms_v2",
    "Standard_M64ms_v2",
    "Standard_M64s_v2"
  ]
}


/* variable "azure_monitor_action_group_name" {
  type        = string
  description = "The name of the Azure Monitor Action Group"
  default     = "AlertOperationsGroup"
}

variable "azure_monitor_action_group_rg_name" {
  type        = string
  description = "Resource Group containing the Azure Monitor Action Group"
  default     = "AzMonitorAlertGroups"
} */

variable "tag-anf-appowner-values" {
  type        = list(any)
  description = "List of mandatory tag keys used by the policy 'require-tag-values-appowner'"
  default = [
    "A&F Female Domestic",
    "A&F Female INTL",
    "A&F Male Domestic",
    "A&F Male INTL",
    "A&F-kids Operations",
    "A&F-kids Stylist",
    "Abercrombie Service Desk",
    "ABI Support",
    "Allocation Support",
    "ASD Leads",
    "Asset Protection",
    "Automation SP Group",
    "BI Data Science Support",
    "BI Search Support",
    "BI Support",
    "Campus Conference Room Support",
    "CAT",
    "Cloud Platform Engineering",
    "Cognos Support",
    "Command Center",
    "Command Center Leads",
    "Commerce Cloud",
    "Contact Center Operations and Technology",
    "Contact Center User Help",
    "Corporate Endpoint Engineering",
    "Corporate Endpoint Support",
    "Corporate IT Fulfillment",
    "CoStar Support",
    "CRM Support",
    "Crystal Reports Support",
    "Data and Insights Platforms Support",
    "Data and Insights Reporting Support",
    "Data Architects",
    "Data Engineering",
    "Data Engineering - Off Hours",
    "Data Science",
    "Database Engineering",
    "DB2 Support",
    "DC User ID Support",
    "Design and Sourcing Support",
    "Disaster Recovery",
    "Document Production",
    "DTC OMS Approvers",
    "ECM Support",
    "eComm Account",
    "eComm Architecture",
    "eComm Asia Support",
    "eComm Catalog",
    "eComm Checkout",
    "eComm ContentDev",
    "eComm DSRE",
    "eComm Engineering",
    "eComm Mobile Apps",
    "eComm Search",
    "EDW",
    "EMPS",
    "EMPS Support",
    "Enterprise",
    "Enterprise Collaboration",
    "Enterprise Integrations Platform",
    "Enterprise Web Services",
    "EPM Support",
    "ESB",
    "ESB SupportNet",
    "ETL Support",
    "ETL Support - Off Hours",
    "Facilities",
    "Fusion Systems Hong Kong",
    "Fusion Systems Japan",
    "Fusion Systems Shanghai",
    "GDI",
    "GDI Data Management",
    "GDI DevOps",
    "GDI DevOps Data",
    "GDI DevOps Integrations",
    "GDI DevOps Platforms Support",
    "GDI IntegrationsMod",
    "Gilly",
    "Gordon Flesch",
    "Hollister Girls",
    "Hollister Guys",
    "Hollister Operations",
    "Hollister Stylist",
    "HRIS Level 1 Support",
    "HRIS Level 2 Support",
    "HVAC Facilities",
    "Hyperion Support",
    "Identity and Access Management",
    "Information Risk",
    "Information Security Operations",
    "Infosec Planning & Architecture",
    "Infrastructure Operations Applications",
    "Integration Services",
    "KFP Communications Solutions",
    "kids Female",
    "kids Male",
    "Kronos Support",
    "Loyalty Support",
    "March Network Application Support",
    "Martech Engineering",
    "MFT Support",
    "MFT Support - Off Hours",
    "MVP",
    "Network - Store Circuit Support",
    "Network Architecture",
    "Network Operations",
    "Notes Applications Support",
    "OMS",
    "Oracle Database Support",
    "P1 Incident Management",
    "PeopleSoft Admins",
    "PeopleSoft Admins Finance",
    "PeopleSoft Admins HR",
    "PeopleSoft Finance",
    "PeopleSoft HR",
    "PeopleSoft Supplier Portal",
    "PIM",
    "POPIns Support",
    "POS Development",
    "POS Level 2 Support",
    "POS Support - DC",
    "Price Management",
    "Procurement Purchasing",
    "Procurement Systems",
    "Production Control",
    "Quality Engineering",
    "Quality Engineering Leads",
    "Reconnet Support",
    "Regional Support",
    "Revenue Accounting",
    "RMS PFS",
    "RMS Pricing PFS",
    "RPA Support",
    "RS2 Application Support",
    "SC Support",
    "Scrum Masters IT",
    "SharePoint Application Support",
    "Ship From Store Support",
    "SQL Database Support",
    "SRM",
    "SSE Application Support",
    "Store Comms HCo",
    "Store Maintenance",
    "Store Operations",
    "Stores Engineering",
    "Stores HR App Support",
    "Stores HR-Training and Dev",
    "Stores Integration",
    "System Stack Engineering",
    "Systems Platforms Engineering",
    "T&E Admin",
    "Vertex Support",
    "VMS Support",
    "VOC Support",
    "WebPDM Support",
    "WMS International Support",
    "WMS Support",
    "WMS US DTC Support",
    "Wonderlic Team"
  ]
}

variable "tag-anf-appowner-excluded-names" {
  type = list(any)
  description = "List of resource names to exclude from the policy 'require-tag-values-appowner'"
  default = [ 
    "nbu12643760777473669523snap1648944001",
    "nbu12643760777473669523snap1648944001_disk_0",
    "nbu1265522422795181853snap1654387201",
    "nbu1265522422795181853snap1656806401",
    "nbu1265522422795181853snap1659225601",
    "nbu1265522422795181853snap1659830401",
    "nbu15228525825239113892snap1648944001",
    "nbu15228525825239113892snap1648944001_disk_0",
    "nbu1712311947676223152snap1648944001",
    "nbu1712311947676223152snap1648944001_disk_0",
    "nbu3277238172519077215snap1635785344",
    "nbu3277238172519077215snap1635786146",
    "nbu3277238172519077215snap1635790358",
    "nbu3277238172519077215snap1635829548",
    "nbu3277238172519077215snap1635897601",
    "nbu3277238172519077215snap1635984001",
    "nbu3277238172519077215snap1635984803",
    "nbu3277238172519077215snap1636027463",
    "nbu3277238172519077215snap1636070663",
    "nbu3277238172519077215snap1636071514",
    "nbu3277238172519077215snap1636114965",
    "nbu3277238172519077215snap1636115817",
    "nbu3277238172519077215snap1636119362",
    "nbu3277238172519077215snap1636159268",
    "nbu3277238172519077215snap1636160119",
    "nbu3277238172519077215snap1636202780",
    "nbu3277238172519077215snap1636245980",
    "nbu3277238172519077215snap1636246831",
    "nbu3277238172519077215snap1636290283",
    "nbu3277238172519077215snap1636291135",
    "nbu3277238172519077215snap1636334587",
    "nbu3277238172519077215snap1636335439",
    "nbu3277238172519077215snap1636378878",
    "nbu3277238172519077215snap1636379730",
    "nbu3277238172519077215snap1636422391",
    "nbu3277238172519077215snap1636422391_disk_0",
    "nbu543921897051248463snap1648944001"
  ]
}

#POLICYSET DEFINITIONS VARIABLES (Probably delete a bunch of these due to overlap \ not needed anymore)
variable "builtin_policies_network_governance" {
  type        = list(any)
  description = "List of policy definitions (display names) for the network_governance policyset"
  default = [
    "Network interfaces should not have public IPs",
    "[Deprecated]: App Service should disable public network access"
  ]
}

variable "builtin_policies_defender" {
  type        = list(any)
  description = "value"
  default = [
    "Configure Azure Defender for servers to be enabled",
    "Configure Azure Defender for App Service to be enabled",
    "Configure Azure Defender for Azure SQL database to be enabled",
    "Configure Azure Defender for SQL servers on machines to be enabled",
    "Configure Azure Defender for open-source relational databases to be enabled",
    "Configure Microsoft Defender for Azure Cosmos DB to be enabled",
    "Configure Azure Defender for Storage to be enabled",
    "Configure Microsoft Defender for Containers to be enabled",
    "Configure Azure Defender for Key Vaults to be enabled",
    "Configure Azure Defender for Resource Manager to be enabled",
    "Configure Azure Defender for DNS to be enabled",
    "Deploy Azure Policy Add-on to Azure Kubernetes Service clusters"
  ]
}

variable "exclusion-list-initiative" {
    type = list(string)
    default = [""]
}