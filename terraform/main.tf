module "general" {
  source = "./modules/general"

  tenancy_id = var.tenancy_id
  compartment_name        = var.compartment_name
  compartment_description = var.compartment_description

}