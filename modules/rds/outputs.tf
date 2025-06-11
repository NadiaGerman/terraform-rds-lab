# modules/security_group/outputs.tf

output "db_security_group_id" {
  description = "ID of the DB Security Group"
  value       = aws_security_group.db_sg.id
}

