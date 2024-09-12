# # Create an Elastic IP (EIP) for the NAT Gateway
# resource "aws_eip" "nat_eip" {
#   vpc = true
# }



# resource "aws_nat_gateway" "public-ngw" {
#   subnet_id     = aws_subnet.public_subnet-1.id
#   allocation_id = aws_eip.nat_eip.id

#   tags = {
#     Name = "public-ngw"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.igw-lol]
# }