data "oci_objectstorage_namespace" "ns" {
  compartment_id = var.tenancy_id
}

resource "oci_objectstorage_bucket" "demo_bucket" {
  compartment_id = var.compartment_id
  namespace      = data.oci_objectstorage_namespace.ns.namespace
  name           = "${var.owner}-bucket-${var.project}"

  access_type = "NoPublicAccess"

  storage_tier = "Standard"
}