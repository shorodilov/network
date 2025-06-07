resource "unifi_network" "home" {
  name    = var.home_vlan_name
  purpose = var.home_vlan_purpose

  subnet       = var.home_vlan_subnet
  vlan_id      = var.home_vlan_id
  dhcp_enabled = var.home_vlan_dhcp_enabled
  dhcp_start   = var.home_vlan_dhcp_start
  dhcp_stop    = var.home_vlan_dhcp_stop
  dhcp_lease   = var.home_vlan_dhcp_lease

  igmp_snooping = true
}
