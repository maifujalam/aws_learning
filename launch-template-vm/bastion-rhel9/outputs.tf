output "ssh" {
  value = "ssh -o ServerAliveInterval=5 -i ~/.ssh/id_rsa ec2-user@${module.bastion-rhel9.public_ip}"
}
