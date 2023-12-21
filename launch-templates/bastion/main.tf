
module "launch-template-bastion" {
  source = "../../modules/launch-template"
  region = var.region
  instance_type = var.instance_type
}
