
resource "aws_launch_template" "launch_template" {
  name = var.name
#  block_device_mappings {
#    device_name = var.block_device_name
#    ebs {
#      volume_size = var.block_device_size
#      volume_type = var.volume_type
#      delete_on_termination = var.delete_on_termination
#    }
#  }
  instance_type = var.instance_type
  image_id = "ami-04708942c263d8190 "
  key_name = "default"
  network_interfaces {
    associate_public_ip_address = true
  }
}
