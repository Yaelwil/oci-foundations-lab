resource "oci_core_volume" "demo" {
  compartment_id = var.compartment_id
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  display_name   = "${var.owner}-BV-demo-${var.project}"
  size_in_gbs   = 50
}

resource "oci_core_volume_attachment" "demo" {
  instance_id    = oci_core_instance.demo.id
  volume_id      = oci_core_volume.demo.id
  is_read_only   = false          # Read/Write
  attachment_type = "ISCSI"
}
