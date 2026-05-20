locals {
  project_name        = "tf-github"
  location            = "australiaeast"
  location_suffix     = "aue"
  resource_group_name = "rg-${local.project_name}-${var.environment}-${local.location_suffix}"
}
