module "bastion-ubuntu2404" {
  source = "../../modules/launch-template-vm"
  region = var.region
  instance_name = var.instance_name
  launch_template = var.launch_template
  instance_type = var.instance_type
  root_volume_size = var.root_volume_size
  vm_count = 1
  vpc_name = var.vpc_name
  subnet_name = var.subnet_name
  spot_instance = var.spot_instance
  enable_public_ip = var.enable_public_ip
}
