resource "aws_instance" "vm" {
  launch_template {
    name = var.launch_template
  }
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
    Owner      = var.owner
    createdBy  = "terraform"
    ModulePath = path.module
    CWD        = path.cwd
  }
}
