data "spot_kubeconfig" "kubernetes" {
  cloudspace_name = spot_cloudspace.cloudspace.name
}