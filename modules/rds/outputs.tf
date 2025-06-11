# modules/security_group/outputs.tf

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.this.endpoint
}

