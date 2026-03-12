# Fetch root compartment automatically
data "oci_identity_tenancy" "root" {
  tenancy_id = var.tenancy_id
}

resource "oci_identity_dynamic_group" "demo" {
  compartment_id = var.tenancy_id
  name           = "${var.owner}-dynamic-group-${var.project}"
  description    = "Dynamic Group for demo compartment"

  matching_rule = <<MATCH
ANY {instance.compartment.id = "${var.compartment_id}"}
MATCH
}

resource "oci_identity_policy" "dg_policy_demo" {
  compartment_id = var.tenancy_id
  name           = "${var.owner}-dynamic-group-policy-${var.project}"
  description    = "Dynamic Group IAM policy for demo compartment"

  statements = [
    "Allow dynamic-group ${oci_identity_dynamic_group.demo.name} to manage object-family in compartment ${var.demo_compartment_name}"
  ]
}