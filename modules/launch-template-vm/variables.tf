variable "region" {
  description = "Region"
}
variable "launch_template" {
  default = "bastion-ubuntu-2404"
}
variable "instance_name" {
  default = "default-instance"
}
