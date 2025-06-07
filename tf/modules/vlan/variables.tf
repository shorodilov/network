variable "name" {
  description = "VLAN name"
  type        = string
}

variable "vlan_id" {
  description = "VLAN identifier"
  type        = number
}

variable "purpose" {
  description = "VLAN purpose, defaults to 'corporate'"
  type        = string
  default     = "corporate"
}

variable "subnet" {
  description = "VLAN subnet CIDR"
  type        = string
}

variable "dhcp_enabled" {
  description = "Whether DHCP server is enabled, defaults to `false`"
  type        = string
  default     = false
}

variable "dhcp_lease" {
  description = "DHCP lease in seconds, optional"
  type        = number
  nullable    = true
  default     = null
}

variable "dhcp_start" {
  description = "DHCP start IP address range, optional"
  type        = string
  nullable    = true
  default     = null
}

variable "dhcp_stop" {
  description = "DHCP stop IP address range, optional"
  type        = string
  nullable    = true
  default     = null
}

variable "igmp_snooping" {
  type    = bool
  default = true
}
