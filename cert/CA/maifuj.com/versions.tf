terraform {
  required_providers {
      tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
  required_version = ">= 1.6.1"
  backend "s3" {
    bucket = "terraform-backend-alam"
    key    = "terraform-state/cert/CA/maifuj.com"
    region = "ap-south-1"
  }
}
