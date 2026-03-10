resource "oci_core_vcn" "main" {
  compartment_id = var.compartment_id
  display_name   = "${var.owner}-vcn-${var.project}"
  cidr_block     = var.vcn_cidr_address

  dns_label = "demovcn"
}