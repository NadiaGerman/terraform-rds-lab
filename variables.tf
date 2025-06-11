# variables.tf (root)

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "lab"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
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
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]  # adjust to your lab region
}
# Provider variables

variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-west-2"  # adjust to your lab region if needed
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
  default     = "default"  # matches your ~/.aws/credentials [default] profile
}

variable "web_sg_id" {
  description = "ID of the Web Security Group (source allowed to access DB)"
  type        = string
}
