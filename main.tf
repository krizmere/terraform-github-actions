resource "azurerm_resource_group" "rg" {
  name     = "rg-${local.project_name}-${var.environment}-${local.location_suffix}"
  location = local.location
  tags     = var.tags
}