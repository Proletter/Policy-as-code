variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy assignments"
  default     = "ANF"
}

variable "mgmt-anfcorp-sandbox" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-sandbox"
}

variable "location" {
  type        = string
  description = "Location for assignments"
  default     = "East US 2"
}
