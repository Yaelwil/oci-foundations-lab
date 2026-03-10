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

variable "private_subnet_id" {
  description = "private_subnet_id"
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