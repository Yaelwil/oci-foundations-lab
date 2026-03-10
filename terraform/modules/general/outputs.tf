################
# Main outputs #
################
output "tenancy_id" {
  description = "tenancy ocid"
  value       = var.tenancy_id
}

output "owner" {
  description = "owner"
  value = var.owner
}

output "project" {
  description = "project"
  value = var.project
}

output "compartment_description" {
  description = "compartment description"
  value = var.compartment_description
}

output "compartment_id" {
  description = "compartment description"
  value = oci_identity_compartment.demo.id
}