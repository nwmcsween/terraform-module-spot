variable "spot_token" {
  type = string
  sensitive = true
}

terraform {
  required_version = ">=1.8.0"

  required_providers {
    spot = {
      source = "rackerlabs/spot"
      version = "~>0.1"
    }
  }
}

provider "spot" {
  token = var.spot_token
}