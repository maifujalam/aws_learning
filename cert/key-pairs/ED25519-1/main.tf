module "key-pair" {
  source = "../../../modules/tls_provider/key-pair"
}
resource "local_file" "public_key" {
  content  = module.key-pair.public-key
  filename = "${path.module}/ED25519-key-1.pub"
}
resource "local_sensitive_file" "private_key" {
  content  = module.key-pair.private-key
  filename = "${path.module}/ED25519-key-1"
}
