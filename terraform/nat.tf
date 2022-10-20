resource "aws_nat_gateway" "igw1" {
  subnet_id = aws_subnet.public-1.id
  allocation_id = aws_eip.nat1.id

  tags = {
    Name = "NAT1"
  }
}

resource "aws_nat_gateway" "igw2" {
  subnet_id = aws_subnet.public-2.id
  allocation_id = aws_eip.nat2.id

  tags = {
    Name = "NAT2"
  }
}