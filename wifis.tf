data "unifi_ap_group" "default" {}
data "unifi_user_group" "default" {}

resource "unifi_wlan" "home" {
  name       = var.home_wlan_ssid
  passphrase = var.home_wlan_passphrase

  security = "wpapsk"
  pmf_mode = "required"

  wpa3_support    = true
  wpa3_transition = false

  network_id = unifi_network.home.id
  ap_group_ids = [
    data.unifi_ap_group.default.id,
  ]
  user_group_id = data.unifi_user_group.default.id

  multicast_enhance    = true
  uapsd                = true
  bss_transition       = true
  fast_roaming_enabled = false
}
