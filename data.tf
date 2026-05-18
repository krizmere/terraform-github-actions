# Identity of the principal running Terraform — used to grant Key Vault Secrets Officer.
data "azurerm_client_config" "current" {}