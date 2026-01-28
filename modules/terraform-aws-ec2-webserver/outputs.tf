output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.webserver.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = var.enable_elastic_ip ? aws_eip.webserver[0].public_ip : aws_instance.webserver.public_ip
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.webserver.id
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.webserver.public_dns
}