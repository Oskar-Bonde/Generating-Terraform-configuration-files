0.0.0
#
# Version: 1.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Provider
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and profile set as default/
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Provider block with AWS in us-west-1 region, profile set as default and alias aws-west-1/
provider "aws" {
  alias  = "files"
  region = "us-west-1"

}

# Resource block to Create VPC called vpc-us-east-1 which uses private network 10.1.0.0/16
}

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1
}

