# modules/db_security_group/variables.tf

variable "name" {
  description = "Name of the DB Security Group"
  type        = string
  default     = "DB Security Group"
}

variable "description" {
  description = "Description of the DB Security Group"
  type        = string
  default     = "Permit access from Web Security Group"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "web_sg_id" {
  description = "ID of the Web Security Group"
  type        = string
}
