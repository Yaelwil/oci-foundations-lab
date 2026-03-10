#############
# Main vars #
#############
variable "tenancy_id" {
  description = "OCID of the root tenancy"
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

variable "compartment_description" {
  description = "compartment_description"
  type        = string
}

################
# Network vars #
################

variable "vcn_cidr_address" {
  description = "vcn_cidr_address"
  type        = string
}

variable "public_subnet_cidr_address" {
  description = "public_subnet_cidr_address"
  type        = string
}

variable "private_subnet_cidr_address" {
  description = "private_subnet_cidr_address"
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