terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.19"
    }
  }
  # Backend configuration is set in the workflow file using the -backend-config option of terraform init command
  backend "azurerm" {
    storage_account_name = "stcollsysnpeaue00"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    resource_group_name  = "rg-developer-dev"
    use_oidc         = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}