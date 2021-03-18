terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 1.25.0"
    }
  }
  required_version = ">= 0.13"
}
