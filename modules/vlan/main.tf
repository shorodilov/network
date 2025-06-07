resource "unifi_network" "vlan" {
  name          = var.name
  purpose       = var.purpose
  subnet        = var.subnet
  vlan_id       = var.vlan_id
  dhcp_enabled  = var.dhcp_enabled
  dhcp_start    = var.dhcp_start
  dhcp_stop     = var.dhcp_stop
  dhcp_lease    = var.dhcp_lease
  igmp_snooping = var.igmp_snooping
}
