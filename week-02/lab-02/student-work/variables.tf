variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "student_name" {
  description = "Student's GitHub username"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
  default     = "webserver-lab2"
}

variable "instance_type" {
  description = "Instance size"
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH"
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_elastic_ip" {
  description = "Whether to attach an EIP"
  type        = bool
  default     = true
}