module "s3-backend" {
  source      = "../../modules/bucket"
  bucket_name = var.bucket_name
  region      = var.region
  owner       = var.owner
}

