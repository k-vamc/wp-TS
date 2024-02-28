#IGW creation

resource "aws_internet_gateway" "vamsi-gateway" {
  vpc_id = aws_vpc.vamsi.id
}

