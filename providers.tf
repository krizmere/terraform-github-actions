terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
  # Backend configuration is set in the workflow file using the -backend-config option of terraform init command
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}