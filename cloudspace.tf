variable "cloudspace_name" {
  type = string
}

variable "cloudspace_k8s_ha_enabled" {
  type = bool
  default = false
}

resource "spot_cloudspace" "cloudspace" {
  name = var.cloudspace_name
  hacontrol_plane = var.cloudspace_k8s_ha_enabled
}