variable "region" {
  description = "Region"
}
variable "instance_name" {
  default = "default-instance"
}
variable "launch_template" {
  default = "bastion-rhel"
}
variable "instance_type" {
  default = "t2.micro"
}