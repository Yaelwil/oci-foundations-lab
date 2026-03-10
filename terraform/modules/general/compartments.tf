data "oci_identity_tenancy" "tenancy" {
  tenancy_id = var.tenancy_id
}

# Create a demo compartment
resource "oci_identity_compartment" "demo" {
  name           = "${var.owner}-compartment-${var.project}"
  description    = var.compartment_description
  compartment_id = data.oci_identity_tenancy.tenancy.id
  enable_delete  = true
}