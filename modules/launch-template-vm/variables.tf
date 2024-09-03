variable "region" {
  description = "Region"
}
variable "owner" {
  default = "skalam"
}
variable "launch_template" {
  default = "bastion-ubuntu-2404"
}
variable "instance_name" {
  default = "default-instance"
}
variable "instance_type" {
  default = "t2.micro"
}
