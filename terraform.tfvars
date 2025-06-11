db_username = "main"
db_password = "lab-password"
db_name     = "lab"

# Lab VPC ID → get this from AWS console
lab_vpc_id = "vpc-067349ba4c567703a"

# Lab Private Subnets → get these from AWS console → must be the ones RDS will use
lab_private_subnet_ids = [
  "subnet-0223d00c32897070b",
  "subnet-0794fc4c63ab42f1a"
]

# Web Security Group ID → from Lab details
web_sg_id = "sg-017593aa2a2c3cdab"
