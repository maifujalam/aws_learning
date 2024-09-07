variable "region" {
  description = "Region"
}
variable "owner" {
  default = "skalam"
}
variable "vm_count" {
  default = "1"
}
variable "instance_name" {
  default = "default-instance"
}
variable "enable_public_ip" {
  default = "true"
  description = "Whether it is public vm or private vm"
}
variable "launch_template" {
  default = "bastion-ubuntu"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "root_volume_size" {
  description = "Size of root volume"
  default = 10
}
