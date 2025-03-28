resource "oci_core_instance" "mongodb" {
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  display_name        = "sender-mongo"
  shape               = var.shape
  source_details {
    source_type = "image"
    source_id   = var.image_ocid
  }
  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key)
  }

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = false
  }

  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
}