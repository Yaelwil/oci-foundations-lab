#############
# Main vars #
#############
output "tenancy_id" {
  description = "tenancy ocid"
  value       = var.tenancy_id
}

output "compartment_id" {
  description = "compartment id"
  value = var.compartment_id
}

output "demo_compartment_name" {
  description = "compartment id"
  value = var.demo_compartment_name
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

output "private_subnet_id" {
  description = "private_subnet_id"
  value = var.private_subnet_id
}

output "public_subnet_id" {
  description = "public_subnet_id"
  value = var.public_subnet_id
}

output "Load_Balancer_ip" {
  description = "instance_shape"
  value = oci_load_balancer_load_balancer.lb_demo.ip_addresses
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