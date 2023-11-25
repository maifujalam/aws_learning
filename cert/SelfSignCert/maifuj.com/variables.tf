variable "region" {
  description = "Region"
}
variable "bucket" {
  default = "terraform-backend-alam"
}
variable "validation_hour" {
  default = "12"
}
variable "common_name" {
  default = "maifuj.com"
}
variable "country" {
  default = "IN"
}
variable "locality" {
  default = "Bangalore"
}
variable "organization" {
  default = "MAIFUJ.COM PVT LTD"
}
variable "organization_unit" {
  default = "MAIFUJ.COM root CA"
}
variable "pincode" {
  default = "560008"
}
variable "province" {
  default = "Mahrashatra"
}
variable "key_algorithm" {
  default = "RSA"
}
variable "key_size" {
  default = "2048"
}
