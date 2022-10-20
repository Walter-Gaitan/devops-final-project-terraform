resource "aws_subnet" "public-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.0/19"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1a"
    "kubernetes.io/cluster/eks" = "owned"
    "kubernetes.io/role/elb"    = "1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.32.0/19"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1b"
    "kubernetes.io/cluster/eks" = "owned"
    "kubernetes.io/role/elb"    = "1"
  }
}

resource "aws_subnet" "private-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.64.0/19"
  availability_zone = "us-east-1a"

  tags = {
    Name                              = "private-us-east-1a"
    "kubernetes.io/cluster/eks"       = "owned"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.96.0/19"
  availability_zone = "us-east-1b"

  tags = {
    Name                              = "private-us-east-1b"
    "kubernetes.io/cluster/eks"       = "owned"
    "kubernetes.io/role/internal-elb" = "1"
  }
}