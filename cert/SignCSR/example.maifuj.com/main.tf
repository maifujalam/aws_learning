module "sign-cesr" {
  source    = "../../../modules/tls_provider/SignCSR"
  cert_request_pem = file(var.cert_request_pem)
  ca_cert_pem = file(var.ca_cert_pem)
  ca_private_key_pem = file(var.ca_private_key_pem)
  validation_hour = var.validation_hour
}
resource "local_file" "signed-cert" {
  content  = module.sign-cesr.signed-cert
  filename = "../../secrets/CASigned/example.maifuj.com/example.maifuj.com.cert"
}
resource "aws_s3_object" "s3-upload-csr" {
  depends_on = [module.sign-cesr,local_file.signed-cert]
  bucket = data.aws_s3_bucket.get_bucket.id
  key    = "/cert/example.maifuj.com/example.maifuj.com.cert"
  source = "../../secrets/CASigned/example.maifuj.com/example.maifuj.com.cert"
}



