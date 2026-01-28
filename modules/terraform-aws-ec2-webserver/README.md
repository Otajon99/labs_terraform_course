# Terraform AWS EC2 Webserver Module

This module creates an EC2 instance configured as a basic web server with appropriate security group settings.

## Features

- Creates an EC2 instance with Apache web server installed via user data
- Configures security group allowing HTTP, HTTPS, and SSH access
- Optional Elastic IP assignment
- Uses latest Amazon Linux 2 AMI by default
- Supports custom AMI specification

## Usage

```hcl
module "webserver" {
  source = "./modules/terraform-aws-ec2-webserver"

  instance_name     = "my-webserver"
  allowed_ssh_cidr  = "0.0.0.0/0"  # Replace with your IP for better security
  enable_elastic_ip = true
  student_name      = "your-username"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| instance_name | Name tag for the instance | `string` | n/a | yes |
| allowed_ssh_cidr | CIDR block allowed to SSH | `string` | n/a | yes |
| instance_type | Instance size | `string` | `"t3.micro"` | no |
| enable_elastic_ip | Whether to attach an EIP | `bool` | `false` | no |
| ami_id | Custom AMI ID | `string` | `""` | no |
| aws_region | AWS region | `string` | `"us-east-1"` | no |
| student_name | Student's GitHub username | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance_id | EC2 instance ID |
| public_ip | Public IP address of the EC2 instance |
| security_group_id | Security group ID |
| instance_public_dns | Public DNS name of the EC2 instance |

## Security Considerations

- The SSH access is restricted to the CIDR block specified in `allowed_ssh_cidr`
- For production use, consider restricting HTTP/HTTPS access to specific CIDR blocks
- The module includes automatic resource tagging with `AutoTeardown = "8h"` for cost management

## Dependencies

- Terraform >= 1.9.0
- AWS Provider ~> 5.0
- AWS credentials configured in environment or CLI