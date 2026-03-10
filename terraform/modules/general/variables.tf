#############
# Main vars #
#############
variable "tenancy_id" {
  description = "tenancy ocid"
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
  description = "compartment description"
  type        = string
}

