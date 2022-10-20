resource "random_id" "random" {
  byte_length = 1
}

resource "aws_s3_bucket" "backend" {
  bucket = "terraform-s3-backend-${random_id.random.hex}"
}

resource "aws_s3_bucket_acl" "backend" {
  bucket = aws_s3_bucket.backend.id
  acl    = "private"
}