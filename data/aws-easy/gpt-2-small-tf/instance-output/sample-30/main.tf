provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instancevariable "instance_type" {
#    type = "string"
#    description = "Instance type"
#    default = "t2.micro"
#    description = "Instance size"
#    default = "t2.micro"
#    description = "Instance tags"
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags {
#      Name = "ec2demo-2"
#    }
# }

# Create EC2 Instancevariable "instance_tags_default_default_default" {
#    tags
}

# Output block
}

