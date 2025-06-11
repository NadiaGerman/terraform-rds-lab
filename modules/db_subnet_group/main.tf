# modules/db_subnet_group/main.tf

resource "aws_db_subnet_group" "this" {
  name       = var.name
  description = var.description
  subnet_ids  = var.subnet_ids

  tags = {
    Name = var.name
  }
}
