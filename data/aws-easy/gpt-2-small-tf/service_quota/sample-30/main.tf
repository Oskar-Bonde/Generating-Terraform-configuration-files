terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create a service quota resource
resource "aws_ebs_volume" "name_1" {
  availability_zone = "us-east-1b"
  size             = 20
  type             = "gp2"
  encrypted        = false

  tags = {
    Name = "ec2demo-2"
  }

  provisioner "file" {
    source      = "./ec2demo.sh"
    destination = "/tmp/ec2demo.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/ec2demo.sh",
      "/tmp/ec2demo.sh ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip} ${aws_instance.ec2demo.private_ip} ${aws_instance.ec2demo.public_ip}"
  }
}

