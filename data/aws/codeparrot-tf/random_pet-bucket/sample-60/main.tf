provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block in region us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# This is to ensure the generated pet name is not a duplicate of an existing resource
resource "random_pet_name" "name_0" {
  keepers = {
    keeper_name = "this.is.truly.a.really.really.long.cluster-name.minimal.example.com"
  }
  byte_length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "this-is-truly-a-really-really-long-cluster-name-minimal-example-com-v1-2-3-4--32"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  tags = {
    "KubernetesCluster"                                                          = "this.is.truly.a.really.really.long.cluster-name.minimal.example.com"
    "Name"                                                                       = "this.is.truly.a.really.really.long.cluster-name.minimal.example.com"
    "k8s.io/etcd/main"                                                  = "us-east-1a/us-east-1a"
    "k8s.io/role/elb"                                                = "1"
    "kubernetes.io/cluster/this.is.truly.a.really.really.long.cluster-name.minimal.example.com" = "owned"
  }
}

