data "unifi_ap_group" "default" {}
data "unifi_user_group" "default" {}

module "wifi_home" {
  providers     = { unifi = unifi }
  source        = "./modules/wlan"
  ap_group_ids  = [data.unifi_ap_group.default.id]
  name          = "S13B-home"
  network_id    = module.lan_home.vlan.id
  passphrase    = var.wlan_home_passphrase
  user_group_id = data.unifi_user_group.default.id
  pmf_mode      = "required"
}

module "wifi_work" {
  providers     = { unifi = unifi }
  source        = "./modules/wlan"
  ap_group_ids  = [data.unifi_ap_group.default.id]
  name          = "S13B-work"
  network_id    = module.lan_home.vlan.id
  passphrase    = var.wlan_work_passphrase
  user_group_id = data.unifi_user_group.default.id
  pmf_mode      = "required"
}
