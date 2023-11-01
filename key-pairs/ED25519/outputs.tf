output "public-key" {
  value = module.key-pair.public-key
}
output "private-key" {
  value = module.key-pair.private-key
  sensitive = true
}

