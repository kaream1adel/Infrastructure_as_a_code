resource "aws_security_group" "public-allow-ssh" {
  name        = "public-allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.network.vpc-id

  tags = {
    Name = "public-allow_ssh"
  }
}


resource "aws_security_group" "private-allow-ssh-3000" {
  name        = "private-allow_ssh"
  description = "Allow ssh inbound traffic and port 3000 for private ec2s"
  vpc_id      = module.network.vpc-id

  tags = {
    Name = "private-allow_ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "public-ssh-ingress" {
  security_group_id = aws_security_group.public-allow-ssh.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "private-ssh-ingress" {
  security_group_id = aws_security_group.private-allow-ssh-3000.id
  cidr_ipv4   = "10.0.0.0/16"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "port-3000-ingress" {
  security_group_id = aws_security_group.private-allow-ssh-3000.id
  cidr_ipv4   = "10.0.0.0/16"
  from_port   = 3000
  ip_protocol = "tcp"
  to_port     = 3000
}