module "bastion-ubuntu2404" {
  source = "../../modules/launch-template-vm"
  region = var.region
  instance_name = var.instance_name
  launch_template = var.launch_template
}
