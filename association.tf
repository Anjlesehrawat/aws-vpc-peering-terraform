resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.test_public.id
  route_table_id = aws_route_table.test_public_rt.id
}

resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.test_private.id
  route_table_id = aws_route_table.test_private_rt.id
}
