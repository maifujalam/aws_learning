module "bastion-rhel9" {
  source = "../../modules/launch-template-vm"
  region = var.region
  instance_name = var.instance_name
  launch_template = var.launch_template
  instance_type = var.instance_type
}
