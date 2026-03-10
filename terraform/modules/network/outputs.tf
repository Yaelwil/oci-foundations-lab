#############
# Main vars #
#############
output "compartment_id" {
  description = "compartment id"
  value = var.compartment_id
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