output "ssh" {
  value = "ssh -o ServerAliveInterval=5 -i ~/.ssh/id_rsa ubuntu@${module.bastion-ubuntu2404.public_ip}"
}
