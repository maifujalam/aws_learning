locals {
  az                     = slice(sort(data.aws_availability_zones.available.names), 0,min(var.subnet-count,length(data.aws_availability_zones.available.names)))
  # getting all AZ
  az_suffix              = [for i in local.az : substr(i, length(i)-1, length(i))]
  # picking zone character from az e.x; us-east-1a to a
  az_count=length(local.az)
  cidr                   = data.aws_vpc.get_vpc.cidr_block  # Getting VPC CIDR
  cidr_block             = tonumber(element(split("/", local.cidr), length(split("/", local.cidr))-1))
  # extracting cidr block value i.e 10.0.0.0/16 to 16
  existing_subnets_count = length(data.aws_subnets.all_subnets.ids)  # Getting all present subnets in VPC
}

resource "aws_subnet" "subnet" {
  count             = var.subnet-count
  cidr_block        = cidrsubnet(data.aws_vpc.get_vpc.cidr_block, 32 -local.cidr_block -5, local.existing_subnets_count+count.index)
  #32(total ipv4 block size) - local.cidr_block(16) - 5(required block size is 11) = 11 as(it will become resulting subnets of block /27).
  vpc_id            = data.aws_vpc.get_vpc.id
  availability_zone = element(local.az, count.index%local.az_count)
  tags              = {
    Name = "${var.subnet}-${element(local.az_suffix, count.index%local.az_count )}"
    Type = var.subnet-type
    Owner = var.owner
    Path = path.cwd
  }
}
resource "aws_route_table_association" "public_rt_association" {
  count = var.subnet-type == "public" ? var.subnet-count : 0
  route_table_id = data.aws_route_table.get_public_rt[0].id
  subnet_id = element(aws_subnet.subnet.*.id,count.index)
}
resource "aws_route_table_association" "private_rt_association" {
  count = var.subnet-type == "public" ? 0 : var.subnet-count
  route_table_id = data.aws_route_table.get_private_rt[0].id
  subnet_id = element(aws_subnet.subnet.*.id,count.index)
}