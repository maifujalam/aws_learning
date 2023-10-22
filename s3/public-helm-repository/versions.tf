terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.22.0"
    }
  }
  required_version = ">= 1.6.1"
  backend "s3" {
    bucket = "terraform-backend-alam"
    key    = "terraform-state/s3/public-helm-repositories"
    region = "ap-south-1"
  }
}
