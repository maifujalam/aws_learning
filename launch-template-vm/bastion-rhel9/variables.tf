variable "region" {
  description = "Region"
}
variable "instance_name" {
  default = "default-instance"
}
variable "launch_template" {
  default = "launch-template-rhel"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "root_volume_size" {
  description = "Size of root volume"
}
variable "vm_count" {
  default = "1"
}
variable "enable_public_ip" {
  default = true
  description = "Whether it is public vm or private vm"
}
variable "spot_instance" {
  default = false
}
variable "subnet_name" {
  default = "subnet-1"
}
variable "vpc_name" {
  default = "default"
}
