# main.tf

module "vpc" {
  source              = "./modules/vpc"
  project_name        = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                 = var.azs
}

module "db_security_group" {
  source    = "./modules/security_group"
  vpc_id    = module.vpc.vpc_id
  web_sg_id = var.web_sg_id
}
