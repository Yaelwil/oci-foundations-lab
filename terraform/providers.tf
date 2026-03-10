terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 5.0"
    }

        tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }

  }
}

provider "oci" {
  config_file_profile = "DEFAULT"
}