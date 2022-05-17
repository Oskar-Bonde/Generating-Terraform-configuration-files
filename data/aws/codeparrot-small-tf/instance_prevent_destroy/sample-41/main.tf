terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS us east 1

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Create EC2 Instance ami-0915bcb5fa77e4892, instance type t2.micro and the lifecycle prevent destroy set true
# terraform apply -var 'ami-0ff8a91507f77f867' -var 'instance-type t2.micro' -var 'key-name t2.micro' -var 'key-path t2.micro'
# terraform destroy -var 'ami-0ff8a91507f77f867' -var 'instance-type t2.micro' -var 'key-name t2.micro' -var 'key-path t2.micro'

# Create lifecycle prevent destroy set true
# terraform apply -var 'ami-0ff8a91507f77f867' -var 'instance-type t2.micro' -var 'key-name t2.micro' -var 'key-path t2.micro' -var 'key-name t2.micro' -var 'key-path t2.micro'
# terraform destroy -var 'ami-0ff8a91507f77f867' -var 'instance-type t2.micro' -var 'key-name t2.micro' -var 'key-path t2.micro'

# Create instance with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

