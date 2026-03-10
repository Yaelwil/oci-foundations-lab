#############
# Main vars #
#############
variable "compartment_id" {
  description = "compartment id"
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