terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.7.0"
    }
  }
  # Backend configuration is set in the workflow file using the -backend-config option of terraform init command
  backend "azurerm" {
    use_azuread_auth = true
    use_oidc         = true
  }
}

provider "azurerm" {
  features {}
  default_tags {
    tags = var.tags
  }
  use_oidc = true
}