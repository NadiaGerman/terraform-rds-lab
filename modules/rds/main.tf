resource "aws_db_instance" "this" {
  identifier              = var.db_identifier
  engine                  = "mysql"
  engine_version          = var.db_engine_version
  instance_class          = var.db_instance_class
  allocated_storage       = var.db_allocated_storage
  storage_type            = var.db_storage_type
  multi_az                = true

  username                = var.db_username
  password                = var.db_password
  db_name                 = var.db_name

  vpc_security_group_ids  = [var.db_security_group_id]
  db_subnet_group_name    = var.db_subnet_group_name

  skip_final_snapshot     = true
  backup_retention_period = 0

  tags = {
    Name = var.db_identifier
  }
}
