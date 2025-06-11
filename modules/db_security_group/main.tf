# modules/db_security_group/main.tf

resource "aws_security_group" "db_sg" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  ingress {
    description     = "Allow MySQL from Web Security Group"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [var.web_sg_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}
