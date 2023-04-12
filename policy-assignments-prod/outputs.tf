output "monitoring_governance_assignment_id_azp" {
  value       = azurerm_management_group_policy_assignment.monitoring_governance_azp.id
  description = "The policy assignment id for monitoring_governance"
}

output "monitoring_governance_assignment_identity_azp" {
  value       = azurerm_management_group_policy_assignment.monitoring_governance_azp.identity
  description = "The policy assignment identity for monitoring_governance"
}

output "network_governance_assignment_id_azp" {
  value       = azurerm_management_group_policy_assignment.network_governance_azp.id
  description = "The policy assignment id for monitoring_governance"
}

output "network_governance_assignment_identity_azp" {
  value       = azurerm_management_group_policy_assignment.network_governance_azp.identity
  description = "The policy assignment identity for monitoring_governance"
}

output "monitoring_governance_assignment_id_pr" {
  value       = azurerm_management_group_policy_assignment.monitoring_governance_pr.id
  description = "The policy assignment id for monitoring_governance"
}

output "monitoring_governance_assignment_identity_pr" {
  value       = azurerm_management_group_policy_assignment.monitoring_governance_pr.identity
  description = "The policy assignment identity for monitoring_governance"
}

output "tag_governance_assignment_id_pr" {
  value       = azurerm_management_group_policy_assignment.tag_governance_pr.id
  description = "The policy assignment id for monitoring_governance"
}

output "tag_governance_assignment_identity_pr" {
  value       = azurerm_management_group_policy_assignment.tag_governance_pr.identity
  description = "The policy assignment identity for monitoring_governance"
}

output "network_governance_assignment_id_pr" {
  value       = azurerm_management_group_policy_assignment.network_governance_pr.id
  description = "The policy assignment id for monitoring_governance"
}

output "network_governance_assignment_identity_pr" {
  value       = azurerm_management_group_policy_assignment.network_governance_pr.identity
  description = "The policy assignment identity for monitoring_governance"
}

# output "tag_governance_assignment_id_azp" {
#   value       = azurerm_management_group_policy_assignment.tag_governance_azp.id
#   description = "The policy assignment id for monitoring_governance"
# }

# output "tag_governance_assignment_identity_azp" {
#   value       = azurerm_management_group_policy_assignment.tag_governance_azp.identity
#   description = "The policy assignment identity for monitoring_governance"
# }