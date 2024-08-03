resource "aws_instance" "vm" {
  launch_template {
    name = var.launch_template
  }
  tags = {
    Name = var.instance_name
  }
}
