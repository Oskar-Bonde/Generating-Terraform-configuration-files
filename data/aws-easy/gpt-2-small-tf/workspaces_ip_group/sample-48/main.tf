terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS configuration file
# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# create a workspace ip group
resource "aws_network_acl" "name_0" {
  vpc_id                          = aws_vpc.main.id
  subnet_ids                        = aws_subnet.subnet_public.id
  security_groups                  = [aws_security_group.default.id]
  key_name                          = aws_key_pair.default.key_name
  tags                              = var.tags
  tags_only                         = var.tags_only
  tags_only_public                 = var.tags_only_public
  tags_only_private                = var.tags_only_private
  tags_only_public                = var.tags_only_public
  tags_only_private_public           = var.tags_only_private_public
  tags_only_public_public           = var.tags_only_public_public
  tags_only_private_public          = var.tags_only_private_public
  tags_only_public_public          = var.tags_only_public_public
  tags_only_private_public         = var.tags_only_private_public
  tags_only_private_public_public = var.tags_only_private_public
}

