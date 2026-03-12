############################
# AUTONOMOUS DATABASE
############################

resource "oci_database_autonomous_database" "adb_demo" {
  compartment_id = var.compartment_id

  display_name = "${var.owner}${var.adb_display_name}${var.project}"
  db_name      = "${var.owner}${var.adb_db_name}${var.project}"

  admin_password = var.adb_admin_password

  ############################
  # WORKLOAD TYPE
  ############################

  db_workload = "AJD" # JSON

  ############################
  # DEVELOPER MODE
  ############################

  is_dev_tier = true

  ############################
  # DATABASE VERSION
  ############################

  db_version = "19c"

  ############################
  # COMPUTE + STORAGE
  ############################
  compute_model = "ECPU"
  compute_count = 4
  data_storage_size_in_gb = 20

  ############################
  # ACCESS CONTROL
  ############################

  whitelisted_ips = [
    "0.0.0.0/0"
  ]

  ############################
  # LICENSE
  ############################

  license_model = "LICENSE_INCLUDED"

}