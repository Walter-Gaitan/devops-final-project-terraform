resource "random_pet" "random" {
  length = 1
}

resource "aws_s3_bucket" "backend" {
  bucket_name        = local.s3_bucket_name
  force_destroy = false
}

resource "aws_s3_bucket_acl" "backend" {
  bucket = aws_s3_bucket.backend.id
  acl    = "private"
}