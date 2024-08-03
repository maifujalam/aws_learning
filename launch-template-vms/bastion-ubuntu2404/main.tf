
module "bastion-ubuntu2404" {
  source = "/home/alam/Desktop/Projects/aws_learning/modules/launch-template-vm"
  region = var.region
  instance_name = var.instance_name
}
