variable "name" {
  description = "Name of this object"
  default = "default-name"
}
variable "region" {
  description = "Region"
}
variable "algorithm" {
  default = "RSA"
}
variable "key_size" {
  default = "2048"
}

# Bucket where to copy keys
variable "bucket" {
  default = "terraform-backend-alam"
}
variable "destination" {
  default = "default-destination"
}
