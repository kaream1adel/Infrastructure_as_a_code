resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.tf-vpc.id

}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public-rt.id    # Reference the public route table
  destination_cidr_block = "0.0.0.0/0"                              # Route all non-local traffic
  gateway_id             = aws_internet_gateway.igw-lol.id              # Reference the Internet Gateway
}