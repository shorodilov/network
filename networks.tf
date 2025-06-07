module "lan_home" {
  providers    = { unifi = unifi }
  source       = "./modules/vlan"
  name         = "home"
  subnet       = "192.168.10.0/24"
  vlan_id      = 10
  dhcp_enabled = true
  dhcp_start   = "192.168.10.100"
  dhcp_stop    = "192.168.10.199"
}
