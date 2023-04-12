locals {
  #Permissions to assign on the defender_governance_root Policy Assignment's managed identity (Fixes automated remediation failures)
  defender_governance_perms = [
    "Security Admin",
    "Azure Kubernetes Service Contributor Role",
    "Azure Kubernetes Service Policy Add-on Deployment",
    "Contributor",
    "Log Analytics Contributor"
    ]

  #Permissions to assign on the monitoring_governance_root Policy Assignment's managed identity (Fixes automated remediation failures)
  monitoring_governance_perms = [
    "Contributor",
    "Network Contributor", 
    "Resource Policy Contributor",
    "Monitoring Contributor", 
    "Log Analytics Contributor"
  ]
}