output "vpc" {
  value = data.aws_vpc.get_vpc.tags
}
output "subnet_name" {
  value = aws_subnet.subnet.tags
}
output "subnet_cidr" {
  value = aws_subnet.subnet.cidr_block
}
