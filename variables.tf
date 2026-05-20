variable "tags" {
  description = "Tags for all Azure resources."
  type        = map(string)
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "australiaeast"
}

variable "environment" {
  description = "Target environment for deployment, used in naming convention of resources and to select appropriate variable files."
  type        = string
}
