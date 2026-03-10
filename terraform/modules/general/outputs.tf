################
# Main outputs #
################
output "tenancy_id" {
  description = "tenancy ocid"
  value       = var.tenancy_id
}

output "compartment_name" {
  description = "compartment name"
  value = var.compartment_name
}

output "compartment_description" {
  description = "compartment description"
  value = var.compartment_description
}