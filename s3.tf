resource "random_pet" "random" {
  length = 1
}

resource "aws_s3_bucket" "backend" {
  bucket        = "terraform-state-${random_pet.random.id}"
  force_destroy = false
}

resource "aws_s3_bucket_acl" "backend" {
  bucket = aws_s3_bucket.backend.id
  acl    = "private"
}
