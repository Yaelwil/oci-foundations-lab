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

output "instance_shape" {
  description = "instance_shape"
  value = var.instance_shape
}

###################
# Autonomous vars #
###################

output "adb_admin_password" {
  description = "Admin password for the Autonomous Database"
  value = var.adb_admin_password
  sensitive   = true
}

output "adb_db_name" {
  description = "adb_db_name"
  value = var.adb_db_name
}

output "adb_display_name" {
  description = "adb_display_name"
  value = var.adb_display_name
}