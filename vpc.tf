resource "aws_vpc" "test_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "Test-VPC" }
}

resource "aws_vpc" "prod_vpc" {
  cidr_block = "192.168.0.0/16"
  tags = { Name = "Prod-VPC" }
}
