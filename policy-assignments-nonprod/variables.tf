variable "custom_prefix" {
  type        = string
  description = "Prefix for custom policy assignments"
  default     = "ANF"
}

# Management Groups
variable "mgmt-anfcorp-nonprod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-nonprod"
}

variable "mgmt-anfcorp-azp" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-azp"
}

variable "mgmt-anfcorp-sandbox" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-sandbox"
}

variable "mgmt-anfcorp-poc" {
  type        = string
  description = "Management group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-poc"
}

variable "mgmt-anfcorp-seas" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-seas"
}

variable "sub-anfcorp-seas-qa" {
  type        = string
  description = "Subscription ID for anfcorp-seas-qa"
  default     = "/subscriptions/5ed0f852-ff10-43d7-9589-ec59bf4e228c"
}

variable "mgmt-anfcorp-eus2-nonprod" {
  type        = string
  description = "Management Group whee definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-eus2-nonprod"
}

variable "mgmt-anfcorp-we-nonprod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-ne-nonprod"
}

variable "mgmt-anfcorp-ea-nonprod" {
  type        = string
  description = "Management Group where definition is stored"
  default     = "/providers/Microsoft.Management/managementGroups/anfcorp-ea-nonprod"  
}
# Locations
variable "location" {
  type        = string
  description = "Location for assignments"
  default     = "East US 2"
}

variable "location-eur" {
  type        = string
  description = "Location for assignments"
  default     = "West Europe"
}

variable "location-seas" {
  type        = string
  description = "Location for assignments"
  default     = "Southeast Asia"
}
variable "location-ea" {
  type = string
  description = "Location for assignments"
  default = "East Asia"
}
