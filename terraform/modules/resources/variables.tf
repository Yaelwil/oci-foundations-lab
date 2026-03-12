#############
# Main vars #
#############
variable "tenancy_id" {
  description = "OCID of the root tenancy"
  type        = string
}

variable "compartment_id" {
  description = "compartment id"
  type        = string
}

variable "demo_compartment_name" {
  description = "demo compartment name"
  type        = string
}

variable "owner" {
  description = "owner"
  type        = string
}

variable "project" {
  description = "project"
  type        = string
}

################
# Network vars #
################

variable "private_subnet_id" {
  description = "private_subnet_id"
  type        = string
}

variable "public_subnet_id" {
  description = "public_subnet_id"
  type        = string
}

#################
# Instance vars #
#################

variable "instance_ocpus" {
  description = "instance ocpus"
  type        = number
}

variable "instance_ram_in_gb" {
  description = "instance_ram_in_gb"
  type        = number
}

variable "instance_shape" {
  description = "instance_shape"
  type        = string
}

###################
# Autonomous vars #
###################

variable "adb_admin_password" {
  description = "Admin password for the Autonomous Database"
  type        = string
  sensitive   = true
}

variable "adb_db_name" {
    description = "adb_db_name"
    type        = string
}

variable "adb_display_name" {
    description = "adb_display_name"
  type        = string
}