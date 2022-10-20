resource "aws_s3_bucket" "backend" {
  bucket = "terraform-s3-backend.id"
  acl    = "private"
}

resource "aws_s3_bucket" "main" {
  bucket_prefix = "my-project-mern-stack.id"
  acl           = "private"
  force_destroy = true
}

