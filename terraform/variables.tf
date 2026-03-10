#############
# Main vars #
#############
variable "tenancy_id" {
  description = "tenancy ocid"
  type        = string
}

variable "compartment_name" {
  description = "compartment name"
  type        = string
}

variable "compartment_description" {
  description = "compartment description"
  type        = string
}