region = "ap-south-1"
instance_name = "rhel-vm"
vm_count = 1
enable_public_ip = true
launch_template = "bastion-rhel"  # for rhel bastion-rhel
root_volume_size = 10
vpc_name = "default"
subnet_name = "subnet-1"
spot_instance = true
