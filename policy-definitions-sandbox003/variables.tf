variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy definitions"
  default     = "ANF TEST"
}
variable "sandbox003" {
  type        = string
  description = "Where all policy defs get stored"
  default     = "/subscriptions/f1c9b578-7307-4492-b1e2-1fb5fb97c52e"
}
variable "policy_definition_category" {
  type        = string
  description = "The category to use for all Policy Definitions"
  default     = "Custom"
}
