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

module "resources" {
  source = "./modules/resources"

  compartment_id              = module.general.compartment_id
  owner                       = var.owner
  project                     = var.project
  private_subnet_id  = module.network.private_subnet_id
  instance_ocpus     = var.instance_ocpus
  instance_ram_in_gb = var.instance_ram_in_gb
  instance_shape = var.instance_shape
}