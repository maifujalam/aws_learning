terraform {
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
  backend "s3" {
    bucket = "terraform-backend-alam"
    key    = "terraform-state/csr/example.maifuj.com"
    region = "ap-south-1"
  }
}
