to create the instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block AWS with region us east#
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
resource "aws_spot_instance_request" "name_1" {
  spot_price = "0.1"
  wait_for_fulfillment = true
  ami = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  spot_type = "one-time"
  availability_zone = "us-east-1b"
  key_name = "microservice-key"
  security_groups = [
    "${aws_security_group.default_egress.id}",
    "${aws_security_group.admin_access.id}",
    "${aws_security_group.default_ingress.id}"
  ]
  subnet_id = "${aws_subnet.public_a.id}"
  associate_public_ip_address = true
  source_dest_check = false
  root_block_device = {
    volume_type = "gp2"
    volume_size = "30"
  }
  tags {
    Name = "microservice-key"
  }
}

