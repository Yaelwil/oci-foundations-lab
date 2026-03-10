################
# Main outputs #
################
output "tenancy_id" {
  description = "tenancy ocid"
  value       = var.tenancy_id
}

output "compartment_description" {
  description = "compartment description"
  value = var.compartment_description
}

output "owner" {
  description = "owner"
  value = var.owner
}

output "project" {
  description = "project"
  value = var.project
}

################
# Network vars #
################

output "vcn_cidr_address" {
  description = "vcn_cidr_address"
  value = var.vcn_cidr_address
}

output "public_subnet_cidr_address" {
  description = "public_subnet_cidr_address"
  value = var.public_subnet_cidr_address
}

output "private_subnet_cidr_address" {
  description = "private_subnet_cidr_address"
  value = var.private_subnet_cidr_address
}

#################
# Instance vars #
#################

output "instance_ocpus" {
  description = "instance_ocpus"
  value = var.instance_ocpus
}

output "instance_ram_in_gb" {
  description = "instance_ram_in_gb"
  value = var.instance_ram_in_gb
}