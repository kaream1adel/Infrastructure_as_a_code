resource "aws_internet_gateway" "igw-lol" {
  vpc_id = aws_vpc.tf-vpc.id

  tags = {
    Name = "igw-lol"
  }
}