#############
# Main Vars #
#############
compartment_description    = "Compartment for Terraform lab experiments"

owner = "yaelwil"
project = "oci"

################
# Network vars #
################

vcn_cidr_address = "10.0.0.0/16"
public_subnet_cidr_address = "10.0.1.0/24"
private_subnet_cidr_address = "10.0.2.0/24"

#################
# Instance vars #
#################

instance_ocpus = 1
instance_ram_in_gb = 8
instance_shape = "VM.Standard.E3.Flex"