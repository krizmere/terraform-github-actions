terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  backend "azurerm" {
    # storage_account_name = "" - Injected by backend-config
    # container_name       = "" - Injected by backend-config
    # key                  = "" - Injected by backend-config
    use_oidc             = true
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}