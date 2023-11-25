variable "cert_request_pem" {
  default = "../../secrets/CSR/example.maifuj.com/csr.csr"
}
variable "ca_private_key_pem" {
  default = "../../secrets/keys/RSA/root-ca"
}
variable "ca_cert_pem" {
  default = "../../secrets/cert/root-ca/root-ca.cert"
}
variable "validation_hour" {
  description = "Hors certificate valid from noe."
  default = "8640"
}
variable "bucket" {
  default = "terraform-backend-alam"
}
