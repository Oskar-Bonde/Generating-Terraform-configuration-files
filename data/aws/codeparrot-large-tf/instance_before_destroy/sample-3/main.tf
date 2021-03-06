terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance called web with ami-0915bcb5fa77e4892 and t2.micro, lifecycle create before destroy true
resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  key_name      = "web-key"
  subnet_id     = "subnet-11ac0174"
  security_groups = ["${aws_security_group.web.id}"]
  associate_public_ip_address = true
  key_name      = "web-key"

  # Create a public-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a public-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1d"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1d"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1d"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1c"

  # Create a private-facing subnet in the first availability zone
  subnet_availability_zone = "us-east-1e"

  # Create a private-facing subnet in the first availability zone
}

