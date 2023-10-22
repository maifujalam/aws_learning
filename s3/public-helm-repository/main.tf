module "public-helm-repository" {
  source = "../../modules/bucket"
  bucket_name = var.bucket_name
  region = var.region
}
