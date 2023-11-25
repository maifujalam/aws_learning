region = "ap-south-1"
algorithm = "RSA"
key_size = "2048"
name = "root-ca"
bucket = "terraform-backend-alam"  # Which bucket to copy file i.e, keys.
destination = "/keys" # Path where to copy file.
