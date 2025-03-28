terraform {
  required_providers {
    oci = {
      version = ">= 4.3.0"
    }
  }
}

provider "oci" {
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
  private_key_path = var.private_key_path
}
