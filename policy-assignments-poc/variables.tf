variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy assignments"
  default     = "ANF"
}

variable "mgmt-anfcorp-poc" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-poc-policy-managed"
}

variable "mgmt-anfcorp-poc-root" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-poc"
}

# Locations
variable "location" {
  type        = string
  description = "Location for assignments"
  default     = "East US 2"
}

variable "location-seas" {
  type        = string
  description = "Location for assignments"
  default     = "Southeast Asia"
}

variable "location-eur" {
  type        = string
  description = "Location for assignments"
  default     = "West Europe"
}
/*
# Management Groups
variable "mgmt-anfcorp-root" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp"
}

variable "mgmt-anfcorp-azp" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-azp"
}

variable "mgmt-anfcorp-nonpoc" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-nonpoc"
}

variable "mgmt-anfcorp-poc" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-poc"
}

variable "mgmt-anfcorp-seas" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-seas"
}

variable "sub-anfcorp-seas-pr" {
  type        = string
  description = "Subscription ID for anfcorp-seas-pr"
  default     = "/subscriptions/339bbe89-0c57-4df1-8595-718f8f51d765"
}

variable "mgmt-anfcorp-eus2-poc" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-eus2-poc"
}

variable "mgmt-anfcorp-we-poc" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-ne-poc"
}
*/


