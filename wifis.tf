data "unifi_ap_group" "default" {}
data "unifi_user_group" "default" {}

module "wifi_home" {
  providers     = { unifi = unifi }
  source        = "./modules/wlan"
  ap_group_ids  = [data.unifi_ap_group.default.id]
  name          = var.wlan_home_ssid
  network_id    = module.lan_home.vlan.id
  passphrase    = var.wlan_home_passphrase
  user_group_id = data.unifi_user_group.default.id
  pmf_mode      = "required"
}
