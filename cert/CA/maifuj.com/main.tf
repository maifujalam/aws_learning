module "CA" {
  source = "../../../modules/tls_provider/CA"
  private_key = file(var.private_key)

  common_name = var.common_name
  country = var.country
  locality = var.locality
  organization = var.organization
  organization_unit = var.organization_unit
  pincode = var.pincode
  province = var.province
  validation_hour = var.validation_hour
}
resource "local_file" "root-ca" {
  depends_on = [module.CA]
  content = module.CA.root-certificate
  filename = "../../secrets/cert/root-ca/root-ca.cert"
}
resource "aws_s3_object" "s3-upload-root-ca" {
  depends_on = [local_file.root-ca]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/cert/CA/maifuj.com/root-ca.cert"
  source = "../../secrets/cert/root-ca/root-ca.cert"
}

