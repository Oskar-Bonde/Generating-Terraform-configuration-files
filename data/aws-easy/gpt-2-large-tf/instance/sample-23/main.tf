# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# health_check {
  healthy_threshold   = 2
  unhealthy_threshold = 2
  timeout             = 3
  unhealthy_threshold_version = 4
  interval            = 30
  target              = "HTTP:80/"
  interval_in_seconds = 30
}

# Provider block
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

