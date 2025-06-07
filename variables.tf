# Can be specified with the UNIFI_API environment variable.
# You should NOT supply the path (/api), the SDK will discover the appropriate paths.
variable "api_url" {
  description = "URL of the controller API."
  type        = string
  default     = "http://unifi/"
}

# It is not recommended to use your own account for management of your controller.
# A user specific to Terraform is recommended.
# You can create a Limited Admin with Local Access Only and provide that information for authentication.
# Two-factor authentication is not supported in the provider.
variable "username" {
  description = "Local user name for the Unifi controller API."
  type        = string
}
variable "password" {
  description = "Password for the user accessing the API."
  sensitive   = true
  type        = string
}

# Networks settings
variable "wlan_home_ssid" {
  type = string
}
variable "wlan_home_passphrase" {
  type      = string
  sensitive = true
}
