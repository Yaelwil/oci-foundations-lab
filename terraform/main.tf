module "general" {
  source = "./modules/general"

  tenancy_id = var.tenancy_id
  owner   = var.owner
  project = var.project
  compartment_description = var.compartment_description


}

module "network" {
  source = "./modules/network"


  compartment_id              = module.general.compartment_id
  owner                       = var.owner
  project                     = var.project

  vcn_cidr_address            = var.vcn_cidr_address
  private_subnet_cidr_address = var.private_subnet_cidr_address
  public_subnet_cidr_address  = var.public_subnet_cidr_address
}