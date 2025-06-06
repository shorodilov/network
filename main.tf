terraform {
  required_version = "~> 1.6"
  required_providers {
    unifi = {
      source  = "ubiquiti-community/unifi"
      version = ">= 0.41.2"
    }
  }
  cloud {
    organization = "shorodilov"
    workspaces {
      project = "local"
      name    = "network"
    }
  }
}

provider "unifi" {
  allow_insecure = true

  api_url  = var.api_url
  username = var.username
  password = var.password
}
