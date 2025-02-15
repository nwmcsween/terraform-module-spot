spot_token = "abc"
cloudspace_name = "123"
spot_pools = [{
  autoscaling = {
    min_nodes = 3
    max_nodes = 10
  }
  bid_price = 0.10
  server_class = "mh.vs1.xlarge-ord"
}]