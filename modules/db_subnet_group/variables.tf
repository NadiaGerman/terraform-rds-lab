# modules/db_subnet_group/variables.tf

variable "name" {
  description = "Name of the DB subnet group"
  type        = string
}

variable "description" {
  description = "Description of the DB subnet group"
  type        = string
  default     = "DB Subnet Group"
}

variable "subnet_ids" {
  description = "List of private subnet IDs for the DB subnet group"
  type        = list(string)
}
