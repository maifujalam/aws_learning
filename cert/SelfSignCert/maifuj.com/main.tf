module "SelfSignedKey" {
  source = "../../../modules/tls_provider/key-pair"
  key_size = var.key_size
  algorithm = var.key_algorithm
}
resource "local_file" "self-signed-pvt-key" {
  depends_on = [module.SelfSignedKey]
  content = module.SelfSignedKey.private-key
  filename = "../../secrets/keys/SelfSigned/maifuj.com/SelfSigned"
}
resource "local_file" "self-signed-pub-key" {
  depends_on = [module.SelfSignedKey]
  content = module.SelfSignedKey.public-key
  filename = "../../secrets/keys/SelfSigned/maifuj.com/SelfSigned.pub"
}
resource "aws_s3_object" "s3-upload-pvt-key" {
  depends_on = [local_file.self-signed-ca]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/keys/SelfSigned/maifuj.com/SelfSigned"
  source = "../../secrets/keys/SelfSigned/maifuj.com/SelfSigned"
}

module "SelfSignedCA" {
  depends_on = [local_file.self-signed-pvt-key]
  source = "../../../modules/tls_provider/SelfSignedCert"
  private_key = module.SelfSignedKey.private-key
  common_name = var.common_name
  country = var.country
  locality = var.locality
  organization = var.organization
  organization_unit = var.organization_unit
  pincode = var.pincode
  province = var.province
}
resource "local_file" "self-signed-ca" {
  depends_on = [module.SelfSignedCA]
  content = module.SelfSignedCA.self-signed-cert
  filename = "../../secrets/cert/SelfSigned/maifuj.com/SelfSigned.cert"
}
resource "aws_s3_object" "s3-upload-self-signed-ca" {
  depends_on = [local_file.self-signed-ca]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/cert/SelfSigned/maifuj.com/SelfSigned.cert"
  source = "../../secrets/cert/SelfSigned/maifuj.com/SelfSigned.cert"
}

