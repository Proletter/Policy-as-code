output "monitoring_governance_assignment_id_np" {
  value = azurerm_management_group_policy_assignment.monitoring_governance_np.id
  description = "The policy assignment id for monitoring_governance"
}

output "monitoring_governance_assignment_identity_np" {
  value       = azurerm_management_group_policy_assignment.monitoring_governance_np.identity
  description = "The policy assignment identity for monitoring_governance"
}

output "tag_governance_assignment_id_np" {
  value       = azurerm_management_group_policy_assignment.tag_governance_np.id
  description = "The policy assignment id for tag_governance"
}

output "tag_governance_assignment_identity_np" {
  value       = azurerm_management_group_policy_assignment.tag_governance_np.identity
  description = "The policy assignment identity for tag_governance"
}

output "network_governance_assignment_id_np" {
  value       = azurerm_management_group_policy_assignment.network_governance_np.id
  description = "The policy assignment id for network_governance"
}

output "network_governance_assignment_identity_np" {
  value       = azurerm_management_group_policy_assignment.network_governance_np.identity
  description = "The policy assignment identity for network_governance"
}
