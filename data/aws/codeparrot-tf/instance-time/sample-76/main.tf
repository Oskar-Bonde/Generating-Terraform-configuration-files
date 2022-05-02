out after it's done installing
module "aws-provider" {
  source = "../../modules/aws/provider"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  aws_region = "${var.aws_region}"
}

# Provider block AWS with region us east-1
provider "aws" {
  region = "us-east-1"
  alias  = "t2.micro"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
resource "aws_spot_instance_request" "name_1" {
  spot_price           = "0.1"
  wait_for_fulfillment = true
  associate_public_ip_address = true
  ami                    = "ami-0ff8a91507f77f867"
  instance_type          = "t2.micro"
  key_name               = "${var.aws_key_name}"
  security_groups      = ["${aws_security_group.default.id}"]
  subnet_id              = "${aws_subnet.public-1.id}"
  associate_vpc_address = true
  source_dest_check      = false
  key_name_prefix        = "${var.aws_key_name_prefix}"
  user_data              = "${file("userdata.sh")}"
  tags = {
    Name = "t2.micro"
  }
}

