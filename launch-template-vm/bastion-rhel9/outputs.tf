output "public-ip" {
  value = flatten(module.bastion-rhel9.public_ip)
}
output "private-ip" {
  value = flatten(module.bastion-rhel9.private_ip)
}

output "public_ssh_commands" {
  value = [for ip in flatten(module.bastion-rhel9.public_ip): format("ssh -o ServerAliveInterval=5 -i ~/.ssh/id_rsa ec2-user@%s",ip)]
}
output "private_ssh_commands" {
  value = [for ip in flatten(module.bastion-rhel9.private_ip): format("ssh -o ServerAliveInterval=5 -i ~/.ssh/id_rsa ec2-user@%s",ip)]
}
