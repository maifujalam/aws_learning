output "public-key" {
  value = module.key-pair.public-key
}
output "private-key" {
  value = module.key-pair.private-key
  sensitive = true
}
#output "s3-key-path" {
#  value = aws_s3_object_copy.s3-private-key
#}
