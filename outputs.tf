# Output RDS endpoint
output "rds_endpoint" {
  description = "RDS endpoint"
  value       = module.rds.rds_endpoint
}
