# data "aws_ami" "amazon_linux" {
#   executable_users = ["self"]
#   most_recent      = true
#  # name_regex       = "Amazon Linux 2023*"
#   owners           = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["Amazon Linux 2023*"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }

resource "aws_instance" "bastion" {
  ami           = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = module.network.public-subnet1-id
  vpc_security_group_ids = [ aws_security_group.public-allow-ssh.id ]

  tags= {
    Name = "bastion server"
  }

}


resource "aws_instance" "application" {
  ami           = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"
  associate_public_ip_address = false
  subnet_id = module.network.private-subnet1-id
  vpc_security_group_ids = [aws_security_group.private-allow-ssh-3000.id]
   tags= {
    Name = "application server"
  }
}