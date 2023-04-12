locals {
  #Permissions to assign on the monitoring_governance_root Policy Assignment's managed identity (Fixes automated remediation failures)
  monitoring_governance_perms = [
    "Contributor",
    "Network Contributor", 
    "Resource Policy Contributor",
    "Monitoring Contributor", 
    "Log Analytics Contributor"
    ]
}