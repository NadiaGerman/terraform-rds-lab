# VPC module → for practice (not used by RDS)
module "vpc" {
  source              = "./modules/vpc"
  project_name        = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                 = var.azs
}

# DB Subnet Group → use Lab private subnets
module "db_subnet_group" {
  source      = "./modules/db_subnet_group"
  name        = "${var.project_name}-db-subnet-group"
  subnet_ids  = var.lab_private_subnet_ids
}

# DB Security Group → use Lab VPC
module "db_security_group" {
  source    = "./modules/db_security_group"
  vpc_id    = var.lab_vpc_id
  web_sg_id = var.web_sg_id
}

# RDS instance → in Lab VPC, Lab private subnets
module "rds" {
  source                 = "./modules/rds"
  db_identifier          = "${var.project_name}-db"
  db_username            = var.db_username
  db_password            = var.db_password
  db_name                = var.db_name
  db_subnet_group_name   = module.db_subnet_group.db_subnet_group_name
  db_security_group_id   = module.db_security_group.db_security_group_id
}
