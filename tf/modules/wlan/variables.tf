variable "name" {
  description = "Wi-Fi network SSID"
  type        = string
}

variable "passphrase" {
  description = "Wi-Fi network password"
  sensitive   = true
  type        = string
  nullable    = true
  default     = null
}

variable "network_id" {
  type = string
}

variable "ap_group_ids" {
  type = list(string)
}

variable "user_group_id" {
  type = string
}

variable "security" {
  description = "The type of WiFi security for this network. Valid values are: `wpapsk`, `wpaeap`, and `open`."
  type        = string
  default     = "wpapsk"
}

variable "wpa3_support" {
  type    = bool
  default = true
}

variable "wpa3_transition" {
  type    = bool
  default = false
}

variable "multicast_enhance" {
  type    = bool
  default = true
}

variable "uapsd" {
  type    = bool
  default = true
}

variable "bss_transition" {
  type    = bool
  default = true
}

variable "fast_roaming_enabled" {
  type    = bool
  default = false
}

variable "pmf_mode" {
  type    = string
  default = "disabled"
}
