resource "aws_subnet" "test_public" {
  vpc_id     = aws_vpc.test_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "test_private" {
  vpc_id     = aws_vpc.test_vpc.id
  cidr_block = "10.0.2.0/24"
}

resource "aws_subnet" "prod_public" {
  vpc_id     = aws_vpc.prod_vpc.id
  cidr_block = "192.168.1.0/24"
}
