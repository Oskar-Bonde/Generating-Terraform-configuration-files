terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a VPC resource with cidr block 10.0.0.0/16. Enable DNS support and DNS hostnames
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Make a service discovery private dns namespace resource. Give it the name 'example.terraform.local' and use vpc id and vpc_id_id_id.terraform.local' and vpc_name_prefix.terraform.local' and vpc_region.terraform.local' and vpc_zone.terraform.local' and vpc_zone_id.terraform.local' and vpc_region_zone.terraform.local' and vpc_zone_name.terraform.local' and vpc_zone_public.terraform.local' and vpc_zone_public_key.terraform.local' and vpc_zone_public_key_path.terraform.local' and vpc_zone_private.terraform.local' and vpc_zone_private_key.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_public.terraform.local' and vpc_zone_public_key.terraform.local' and vpc_zone_public_key_path.terraform.local' and vpc_zone_private.terraform.local' and vpc_zone_private_key.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terraform.local' and vpc_zone_private_key_path.terra
}

