variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy assignments"
  default     = "ANF"
}

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

variable "mgmt-anfcorp-nonprod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-nonprod"
}

variable "mgmt-anfcorp-prod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-prod"
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

variable "mgmt-anfcorp-eus2-prod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-eus2-prod"
}

variable "mgmt-anfcorp-we-prod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-ne-prod"
}
variable "mgmt-anfcorp-ea-prod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-ea-prod"  
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

variable "location-ea" {
  type = string
  description = "Location for assignments"
  default = "East Asia"
}
