resource "aws_db_subnet_group" "rds-subnet-group" {
  name       = "rds-subnet-group"
  subnet_ids = [module.network.private-subnet1-id, module.network.private-subnet2-id]

  tags = {
    Name = "rds-subnet-group"
  }
}

resource "aws_db_instance" "RDS" {
  identifier             = "test"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "16.3"
  username               = "kareaaam"
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.rds-subnet-group.name
  vpc_security_group_ids = [aws_security_group.private-allow-ssh-3000.id]
}
