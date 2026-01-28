output "instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2_webserver.instance_id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2_webserver.public_ip
}

output "security_group_id" {
  description = "Security group ID"
  value       = module.ec2_webserver.security_group_id
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = module.ec2_webserver.instance_public_dns
}