resource "aws_s3_bucket" "bucket" {
  bucket_prefix = "${var.bucket_name}-"
  acl    = "private"
  tags = {
    Name        = var.bucket_name
  }
}
