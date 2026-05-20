locals {
  project_name         = "terraform-github-actions"
  location             = "australiaeast"
  location_suffix      = "aue"
  resource_group_name = "rg-${local.project_name}-${var.environment}-${local.location_suffix}"
}