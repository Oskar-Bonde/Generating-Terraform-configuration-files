terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# create wafv2 ip set, use regional scope, assigna name and IPV4 address version. Set addresses to 4.3.3.4/32 and 2.8.1.9/32"
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Concepts.html#aws-waf-v2-ip-set
# https://docs.aws.amazon.com/
}

