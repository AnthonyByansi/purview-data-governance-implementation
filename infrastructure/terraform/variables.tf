variable "prefix" {
  description = "Prefix used for resource names (lowercase, alphanumeric)."
  type        = string
}

variable "location" {
  description = "Azure region for resources."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group to create/use."
  type        = string
}

variable "managed_resource_group_name" {
  description = "Name of the Purview managed resource group."
  type        = string
}

variable "tags" {
  description = "Common resource tags."
  type        = map(string)
  default     = {}
}

variable "sql_admin_login" {
  description = "SQL admin login name."
  type        = string
  default     = "sqladminuser"
}

variable "sql_admin_password" {
  description = "SQL admin password (supply securely via TF_VAR)."
  type        = string
  sensitive   = true
}

variable "rbac_principal_ids" {
  description = "List of Azure AD Object IDs to assign Reader at RG scope."
  type        = list(string)
  default     = []
}
