module "key-pair-csr" {
  source    = "../../../modules/tls_provider/key-pair"
  algorithm = "RSA"
  key_size  = 2048
}
resource "local_sensitive_file" "private_key" {
  content  = module.cert-example_com.private_key_file
  filename = "../../secrets/CSR/example.maifuj.com/pvt_key"
}
resource "aws_s3_object" "s3-upload-pvt-key" {
  depends_on = [module.key-pair-csr,local_sensitive_file.private_key]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/CSR/example.maifuj.com/pvt_key"
  source = "../../secrets/CSR/example.maifuj.com/pvt_key"
}
module "cert-example_com" {
  source      = "../../../modules/tls_provider/CSR"
  private_key = module.key-pair-csr.private-key

  common_name       = var.common_name
  country           = var.country
  locality          = var.locality
  organization      = var.organization
  organization_unit = var.organization_unit
  pincode           = var.pincode
  province          = var.province
  validation_hour   = var.validation_hour

}
resource "local_sensitive_file" "csr_file" {
  content  = module.cert-example_com.csr_file
  filename = "../../secrets/CSR/example.maifuj.com/csr.csr"
}

resource "aws_s3_object" "s3-upload-csr" {
  depends_on = [module.key-pair-csr,local_sensitive_file.csr_file]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/CSR/example.maifuj.com/csr.pem"
  source = "../../secrets/CSR/example.maifuj.com/csr.csr"
}



