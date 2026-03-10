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

output "private_subnet_id" {
  description = "private_subnet_id"
  value = var.private_subnet_id
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