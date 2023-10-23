module "public-helm-repository" {
  source      = "../../modules/bucket"
  bucket_name = var.bucket_name
  region      = var.region
}
resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = module.public-helm-repository.bucket_id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "public-access-control" {
  bucket                  = module.public-helm-repository.bucket_id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "public-access" {
  depends_on = [aws_s3_bucket_ownership_controls.ownership, aws_s3_bucket_public_access_block.public-access-control]

  bucket = module.public-helm-repository.bucket_id
  acl    = "public-read"
}
