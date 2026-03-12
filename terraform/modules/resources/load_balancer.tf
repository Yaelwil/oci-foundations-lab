#################
# Load Balancer #
#################

resource "oci_load_balancer_load_balancer" "lb_demo" {

  compartment_id = var.compartment_id
  display_name   = "${var.owner}-lb-demo-${var.project}"
  shape          = "flexible"
  subnet_ids = [
    var.public_subnet_id
  ]

  is_private = false

  shape_details {
    minimum_bandwidth_in_mbps = 10
    maximum_bandwidth_in_mbps = 10
  }
}

###############
# Backend Set #
###############

resource "oci_load_balancer_backend_set" "bs_demo" {

  name             = "${var.owner}-bs-demo-${var.project}"
  load_balancer_id = oci_load_balancer_load_balancer.lb_demo.id
  policy           = "ROUND_ROBIN"

  health_checker {

    protocol = "TCP"
    port     = 22

    interval_ms         = 10000
    timeout_in_millis   = 3000
    retries             = 3
  }
}

####################
# Backend Instance #
####################

resource "oci_load_balancer_backend" "backend_instance" {

  load_balancer_id = oci_load_balancer_load_balancer.lb_demo.id
  backendset_name  = oci_load_balancer_backend_set.bs_demo.name

  ip_address = oci_core_instance.demo.private_ip
  port       = 5000

  weight = 1
}

############
# Listener #
############

resource "oci_load_balancer_listener" "listener_5000" {

  load_balancer_id         = oci_load_balancer_load_balancer.lb_demo.id
  name                     = "${var.owner}-lb-listener-${var.project}"
  default_backend_set_name = oci_load_balancer_backend_set.bs_demo.name

  port     = 5000
  protocol = "HTTP"
}