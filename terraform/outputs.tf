output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "VPC ID"
  sensitive   = false
}

output "s3_bucket" {
  value       = aws_s3_bucket.backend.id
  description = "S3 Bucket ID"
  sensitive   = false
}