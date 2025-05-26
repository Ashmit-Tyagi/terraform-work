resource "aws_db_subnet_group" "db-subnet" {
  name       = "rds-subnet-group"
  subnet_ids = var.db_subnets
}

resource "aws_db_instance" "db-ins" {
  allocated_storage      = var.allocated_storage
  db_name                = var.db_name
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.db_user
  password                   = var.db_pass
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = true
  multi_az               = true
  db_subnet_group_name   = aws_db_subnet_group.db-ins.name
  vpc_security_group_ids = [var.db_sg]
  storage_type           = var.storage_type
}