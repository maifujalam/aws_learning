resource "aws_internet_gateway" "gw" {
  vpc_id = data.aws_vpc.get_vpc.id
  tags = {
    Name = var.internet_gateway_name
  }
}
