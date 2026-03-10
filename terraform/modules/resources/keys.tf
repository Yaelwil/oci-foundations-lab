resource "tls_private_key" "oci_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "private_key" {
  content         = tls_private_key.oci_key.private_key_pem
  filename        = "${path.module}/oci_private_key.pem"
  file_permission = "0600"
}
