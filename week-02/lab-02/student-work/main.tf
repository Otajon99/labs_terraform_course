module "ec2_webserver" {
  source = "../../modules/terraform-aws-ec2-webserver"

  student_name      = var.student_name
  instance_name     = var.instance_name
  instance_type     = var.instance_type
  allowed_ssh_cidr  = var.allowed_ssh_cidr
  enable_elastic_ip = var.enable_elastic_ip
  aws_region        = var.aws_region
}