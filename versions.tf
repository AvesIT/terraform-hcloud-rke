terraform {
  required_version = ">= 0.13"

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.14"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 1.4"
    }
    rke = {
      source  = "rancher/rke"
      version = "~> 1.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 2.1"
    }
  }
}
