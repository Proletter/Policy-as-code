terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.5.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Data call to definitions workspace for Policy Definition ID reference on policy assignments
data "terraform_remote_state" "policy-def" {
  backend = "remote"
  config  = {
    organization = "anfcorp"               //ANF's TFC organization
    workspaces   = {
      name       = "azure-policy-definitions" //Name of the target workspace 
    }
  }
}

# Data call to current subscription
data "azurerm_subscription" "current" {
}