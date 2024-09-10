resource "aws_route_table_association" "public-rta-1" {
  subnet_id      = aws_subnet.public_subnet-1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-rta-2" {
  subnet_id      = aws_subnet.public_subnet-2.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private-rta-1" {
  subnet_id      = aws_subnet.private_subnet-1.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rta-2" {
  subnet_id      = aws_subnet.private_subnet-2.id
  route_table_id = aws_route_table.private-rt.id
}