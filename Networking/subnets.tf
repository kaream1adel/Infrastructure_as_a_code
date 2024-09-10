resource "aws_subnet" "public_subnet-1" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "${var.region-name}a"
   map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet-1"
  }
}
resource "aws_subnet" "public_subnet-2" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "${var.region-name}b"
   map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet-2"
  }
}

resource "aws_subnet" "private_subnet-1" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "${var.region-name}a"
   map_public_ip_on_launch = false

  tags = {
    Name = "private_subnet-1"
  }
}

resource "aws_subnet" "private_subnet-2" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "${var.region-name}b"
   map_public_ip_on_launch = false

  tags = {
    Name = "private_subnet-2"
  }
}

