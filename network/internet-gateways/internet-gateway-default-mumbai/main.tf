module "internet-gateway-default-mumbai" {
  source = "../../../modules/network/internet-gateway"
  region = var.region
  owner = var.owner
  vpc_name = var.vpc_name
  internet_gateway_name = var.internet_gateway_name
}
