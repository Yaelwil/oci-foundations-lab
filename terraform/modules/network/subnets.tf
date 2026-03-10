resource "oci_core_subnet" "public" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.main.id

  cidr_block = var.public_subnet_cidr_address

  display_name = "${var.owner}-public-subnet-${var.project}"

  route_table_id    = oci_core_route_table.public_rt.id
  security_list_ids = [oci_core_security_list.public_sl.id]

  prohibit_public_ip_on_vnic = false
}

resource "oci_core_subnet" "private" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.main.id

  cidr_block = var.private_subnet_cidr_address

  display_name = "${var.owner}-private-subnet-${var.project}"

  prohibit_public_ip_on_vnic = true
}