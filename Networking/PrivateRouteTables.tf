
resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.tf-vpc.id

}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private-rt.id    # Reference the public route table
  destination_cidr_block = "0.0.0.0/0"                              # Route all non-local traffic
  gateway_id             = aws_nat_gateway.public-ngw.id              # Reference the Internet Gateway
}
  
