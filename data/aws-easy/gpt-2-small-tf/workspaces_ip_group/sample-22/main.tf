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
  vpc_id                          = "${aws_vpc.main.id}"
  subnet_ids                        = ["${aws_subnet.main.id}"]
  security_groups                  = ["${aws_security_group.default.id}"]
  depends_on                       = ["aws_internet_gateway.main"]
}

