variable "region" {
  description = "Region"
}
variable "instance_name" {
  default = "default-instance"
}
variable "launch_template" {
  default = "bastion-ubuntu"
}
variable "root_volume_size" {
  description = "Size of root volume"
}
