variable "region" {
  description= "Region Name"
}
variable "vpc" {
  description = "VPC Name"
}
variable "subnet" {
  description = "Subnet Name"
}
variable "subnet-count" {
  description = "Subnet Count"
}
variable "subnet-type" {
  description = "Type of Subnet.Whether public or private."
}
variable "public_route_table" {
  default = ""
  description = "Public Route Table name"
}
variable "private_route_table" {
  default = ""
  description = "private Route Table name"
}
variable "owner" {
  description = "Owner Name"
}
