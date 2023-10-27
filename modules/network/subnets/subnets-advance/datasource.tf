data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "get_vpc" {
  tags = {
    Name = var.vpc
  }
}
data "aws_subnets" "all_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.get_vpc.id]
  }
}
data "aws_route_table" "get_public_rt" {
  count = var.public_route_table != "" ? 1 : 0
  tags = {
    Name = var.public_route_table
  }
}
data "aws_route_table" "get_private_rt" {
  count = var.private_route_table != "" ? 1 : 0
  tags = {
    Name = var.private_route_table
  }
}