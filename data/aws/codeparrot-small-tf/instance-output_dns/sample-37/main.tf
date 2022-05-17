terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east

provider "aws" {
  region = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro

resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Output block, create public DNS URL from vm
resource "null_resource" "name_1" {
  provisioner "local-exec" {
    command = <<EOF
      if [ -f /var/lib/cloud/instance/boot-finished ]; then
        echo "Waiting for cloud-init...";
        sleep 1;
      fi
      echo "Waiting for cloud-init...";
      echo "  Waiting for cloud-init...");
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${var.cloudinit_public_dns} > /dev/null; sleep 5; done
      echo "  ${
}

