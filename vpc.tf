resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16" # AWS VPC CIDR block

  instance_tenancy = "default"

  # Required for Kubernetes
  enable_dns_hostnames = true

  enable_dns_support = true

  enable_classiclink = false

  enable_classiclink_dns_support = false

  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = "mern-stack"
  }
}


