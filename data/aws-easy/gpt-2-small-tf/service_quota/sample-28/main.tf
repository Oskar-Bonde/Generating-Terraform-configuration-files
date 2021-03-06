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
    Name = "ec2demo2-ep"
  }

  provisioner "file" {
    source      = "../../../../ec2/ec2-ep.sh"
    destination = "/tmp/ec2-ep.sh"
  }

  provisioner "file" {
    source      = "../../../../ec2/ec2-ep-sh.sh"
    destination = "/tmp/ec2-ep-sh.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/ec2-ep.sh",
      "/tmp/ec2-ep.sh ${var.ec2_instance_type} ${var.ec2_instance_count} ${var.ec2_region} ${var.ec2_zone} ${var.ec2_zone} ${var.ec2_instance_name} ${var.ec2_instance_project} ${var.ec2_region} ${var.ec2_zone} ${var.ec2_instance_name} ${var.ec2_instance_project} ${var.ec2_region} ${var.ec2_zone} ${var.ec2_instance_name} ${var.ec2_instance_project} ${var.ec2_zone} ${var.ec2_instance_name} ${var.ec2_instance_project} ${var.ec2_zone} ${var.ec2_zone_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count} ${var.ec2_instance_count}                  
}

