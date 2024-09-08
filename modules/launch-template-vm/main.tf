resource "aws_instance" "vm" {
  count = var.vm_count
  launch_template {
    name = var.launch_template
  }
  instance_type = var.instance_type
  associate_public_ip_address = var.enable_public_ip
  root_block_device {
    volume_size = var.root_volume_size
    delete_on_termination = true
  }
  tags = {
    Name =  "${var.instance_name}-${count.index+1}"
    Owner      = var.owner
    createdBy  = "terraform"
    ModulePath = path.module
    CWD        = path.cwd
  }
  instance_market_options {
    market_type = var.spot_instance? "spot" : null
  }
}
