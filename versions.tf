terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
  required_version = ">= 0.13"
}
