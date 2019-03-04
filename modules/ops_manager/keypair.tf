resource "aws_key_pair" "ops_manager" {
  key_name   = "${local.name_prefix}-ops-manager-key"
  public_key = "${tls_private_key.ops_manager.public_key_openssh}"
}

resource "tls_private_key" "ops_manager" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}
