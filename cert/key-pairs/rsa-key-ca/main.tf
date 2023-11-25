module "key-pair" {
  source = "../../../modules/tls_provider/key-pair"
}

# Stores public key to file.
resource "local_file" "public_key" {
  content  = module.key-pair.public-key
  filename = "../../secrets/keys/RSA/${var.name}.pub"
}

# Stores public key to file.
resource "local_sensitive_file" "private_key" {
  content  = module.key-pair.private-key
  filename = "../../secrets/keys/RSA/${var.name}"
}

# Upload file to s3 private bucket also.
resource "aws_s3_object" "s3-public-key" {
  depends_on = [module.key-pair]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/keys/${var.name}"
  source = "../../secrets/keys/RSA/${var.name}"
}
