resource "aws_subnet" "subnet" {
  cidr_block = var.subnet_cidr
  vpc_id     = data.aws_vpc.get_vpc.id
  tags = {
    Name = var.subnet_name
  }
}
