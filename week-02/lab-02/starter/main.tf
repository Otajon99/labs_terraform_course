# Lab 2 Starter Configuration
# Add your main resources here

# Example resource (remove and replace with actual lab content)
resource "aws_s3_bucket" "example" {
  bucket = "lab2-${var.student_name}-${random_id.bucket_suffix.hex}"

  tags = {
    Name = "Lab2-Example-Bucket"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}