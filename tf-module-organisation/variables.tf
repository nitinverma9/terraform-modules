variable "feature_set" {
  description = "(Optional) Specify ALL (default) or CONSOLIDATED_BILLING"
  default     = "ALL"
}

variable "enabled_policy_types" {
  description = "List of Organizations policy types to enable in the Organization Root"
  default     = ["BACKUP_POLICY", "SERVICE_CONTROL_POLICY", "TAG_POLICY"]
}

variable "aws_service_access_principals" {
  description = "List of AWS service principal names for which you want to enable integration with your organization."
  default     = ["cloudtrail.amazonaws.com", "config.amazonaws.com"]
}

variable "toplevel_ou_names" {
  description = "Names of the Top level OUs to create"
  default     = []
}

variable "policy_names" {
  description = "Names of the OUs to create"
  default = []
}