variable "subscription_pci" {
  type        = bool
  description = "Enables PCI-DSS Standards subscription"
}

variable "subscription_cis" {
  type        = bool
  description = "Enables CIS Foundations Benchmark Standards subscription"
}

variable "subscription_foundational" {
  type        = bool
  description = "Enables AWS Foundational Security Best Practices subscription"
}

variable "severity_list" {
  type    = list(any)
  default = []
}

variable "members" {
  type        = list(any)
  default     = []
  description = "List of member AWS accounts as [{account_id: '9999', email: 'a@b.com'}, {...}] }"
}

variable "invite" {
  type        = bool
  default     = true
  description = "Invite member accounts? (Use 'false' when this account is the delegated admin by master account)"
}

variable "alarm_slack_endpoint" {
  type        = string
  default     = ""
  description = "Enables slack notification to endpoint passed (optional)"
}