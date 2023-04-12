variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy assignments"
  default     = "ANF TEST"
}
variable "location" {
  type        = string
  description = "Location for assignments"
  default     = "East US 2"
}
variable "sandbox003" {
  type        = string
  description = "Subscription ID for anfcorp-sandbox003"
  value       = "/subscriptions/f1c9b578-7307-4492-b1e2-1fb5fb97c52e"
}
