resource "random_id" "random" {
  byte_length = 1
}

resource "aws_s3_bucket" "backend" {
  bucket        = "terraform-s3-backend-s9" # s3 used for backend already created
  force_destroy = false
}

resource "aws_s3_bucket_acl" "backend" {
  bucket = aws_s3_bucket.backend.id
  acl    = "private"
}