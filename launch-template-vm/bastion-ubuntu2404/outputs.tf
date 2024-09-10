output "public-ip" {
  value = flatten(module.bastion-ubuntu2404.public_ip)
}
output "private-ip" {
  value = flatten(module.bastion-ubuntu2404.private_ip)
}

output "public_ssh_commands" {
  value = [for ip in flatten(module.bastion-ubuntu2404.public_ip): format("ssh -o ServerAliveInterval=5 -i ~/.ssh/id_rsa ubuntu@%s",ip)]
}
output "private_ssh_commands" {
  value = [for ip in flatten(module.bastion-ubuntu2404.private_ip): format("ssh -o ServerAliveInterval=5 -i ~/.ssh/id_rsa ubuntu@%s",ip)]
}
