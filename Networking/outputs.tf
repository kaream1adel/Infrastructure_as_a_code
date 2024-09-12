output "vpc-id" {
  value = aws_vpc.tf-vpc.id
}

output "public-subnet1-id" {
  value = aws_subnet.public_subnet-1.id
}

output "private-subnet1-id" {
  value = aws_subnet.private_subnet-1.id
}

output "private-subnet1-name" {
  value = aws_subnet.private_subnet-1
}

output "private-subnet2-id" {
  value = aws_subnet.private_subnet-2.id
}