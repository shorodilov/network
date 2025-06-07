resource "unifi_wlan" "wlan" {
  name                 = var.name
  passphrase           = var.passphrase
  security             = var.security
  network_id           = var.network_id
  ap_group_ids         = var.ap_group_ids
  user_group_id        = var.user_group_id
  multicast_enhance    = var.multicast_enhance
  uapsd                = var.uapsd
  bss_transition       = var.bss_transition
  fast_roaming_enabled = var.fast_roaming_enabled
  pmf_mode             = var.pmf_mode
  wpa3_support         = var.wpa3_support
  wpa3_transition      = var.wpa3_transition
}
