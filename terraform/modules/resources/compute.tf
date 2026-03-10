data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_core_instance" "demo" {
  compartment_id       = var.compartment_id
  availability_domain  = data.oci_identity_availability_domains.ads.availability_domains[0].name
  display_name         = "${var.owner}-instance-${var.project}"
  shape                = "VM.Standard.E4.Flex"

  metadata = {
    ssh_authorized_keys = tls_private_key.oci_key.public_key_openssh
  }

  create_vnic_details {
    subnet_id        = var.private_subnet_id
    assign_public_ip = true
    display_name     = "${var.owner}-instance-${var.project}-vnic"
  }

  source_details {
    source_type = "image"
    source_id    = local.oracle_linux_image_id
  }

  shape_config {
    ocpus        = var.instance_ocpus
    memory_in_gbs = var.instance_ram_in_gb
  }
}

data "oci_core_images" "oracle_linux" {
  compartment_id           = var.compartment_id
  operating_system         = "Oracle Linux"
  operating_system_version = "8"

  shape       = "VM.Standard.E4.Flex"

  sort_by     = "TIMECREATED"
  sort_order  = "DESC"
}

locals {
  oracle_linux_image_id = data.oci_core_images.oracle_linux.images[0].id
}