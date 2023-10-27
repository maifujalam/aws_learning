#data "aws_vpc" "get_vpc" {
#  tags = {
#    Name = var.vpc_name
#  }
#}
data "aws_vpc" "get_vpc" {
    filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}
