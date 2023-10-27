output "subnets-details" {
  value = [for i in aws_subnet.subnet.*: format("%s - %s - %s",i.cidr_block,i.availability_zone,var.subnet-type)]
}
