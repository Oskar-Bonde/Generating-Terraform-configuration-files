terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS provider
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a AWS VPC resource
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.kubernetes-private-shared-subnet-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157.id}"
  vpc_security_group_ids = ["${aws_security_group.nodes-private-shared-subnet-example-com.id}"]
  subnet_id     = "${aws_subnet.us-test-1a-private-shared-subnet-example-com.id}"
  tags = {
    "KubernetesCluster"                         = "private-shared-subnet.example.com"
    "Name"                                      = "private-shared-subnet.example.com"
    "kubernetes.io/cluster/private-shared-subnet.example.com" = "owned"
  }
}

# Create AWS subnets resource
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.kubernetes-private-shared-subnet-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157.id}"
  vpc_security_group_ids = ["${aws_security_group.nodes-private-shared-subnet-example-com.id}"]
  subnet_id     = "${aws_subnet.us-test-1a-private-shared-subnet-example-com.id}"
  tags = {
    "KubernetesCluster"                         = "private-shared-subnet.example.com"
    "Name"                                      = "private-shared-subnet.example.com"
    "kubernetes.io/cluster/private-shared-subnet.example.com" = "owned"
  }
}

