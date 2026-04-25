resource "aws_route_table" "test_public_rt" {
  vpc_id = aws_vpc.test_vpc.id
}

resource "aws_route" "internet" {
  route_table_id         = aws_route_table.test_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table" "test_private_rt" {
  vpc_id = aws_vpc.test_vpc.id
}

resource "aws_route" "nat" {
  route_table_id         = aws_route_table.test_private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

resource "aws_route" "to_prod" {
  route_table_id            = aws_route_table.test_public_rt.id
  destination_cidr_block    = "192.168.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}
