variable "spot_pools" {
  type = list(object({
    server_class = string
    bid_price    = number
    autoscaling  = optional(object(any))
    nodes        = optional(number)
  }))

}

resource "spot_spotnodepool" "spot" {
  for_each = {
    for pool in var.spot_pools : pool.server_class => pool
  }

  cloudspace_name      = spot_cloudspace.cloudspace.name
  server_class         = each.value.server_class
  autoscaling          = each.value.autoscaling
  desired_server_count = each.value.nodes
}
