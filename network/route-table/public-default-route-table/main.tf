module "public-default-route-table" {
  source = "../../../modules/network/route-tables/public-route-table"
  region = var.region
  owner = var.owner
  vpc_name = var.vpc_name
  internet_gateway = var.internet_gateway
  route_table = var.route_table
}
