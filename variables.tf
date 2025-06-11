# Provider variables
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "aws_profile" {
  description = "AWS CLI profile"
  type        = string
  default     = "default"
}

# VPC module variables
variable "project_name" {
  description = "Project name"
  type        = string
  default     = "lab"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "azs" {
  description = "List of Availability Zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

# Lab VPC variables
variable "lab_vpc_id" {
  description = "Lab VPC ID"
  type        = string
}

variable "lab_private_subnet_ids" {
  description = "List of Lab VPC private subnet IDs"
  type        = list(string)
}

# Web Security Group
variable "web_sg_id" {
  description = "ID of the Web Security Group (source allowed to access DB)"
  type        = string
}

# RDS instance variables
variable "db_username" {
  description = "RDS master username"
  type        = string
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Initial DB name"
  type        = string
}
