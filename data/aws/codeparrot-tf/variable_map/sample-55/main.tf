provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.name_0
variable "name_0" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev, prod, stage, prod_stage, stage_prod_stage, stage_dev, stage_stage_prod_dev, stage_prod_prod_stage, stage_test, stage_test_dev, stage_test_prod, stage_test_stage, stage_prod_test, stage_prod_test, stage_test_test, stage_prod_test_dev, stage_test_prod_test, stage_prod_prod_stage, stage_test_test, stage_prod_test_stage, stage_test_prod_test, stage_test_test_prod, stage_prod_prod_stage, stage_test_test, stage_prod_test_stage, stage_test_prod_test, stage_test_test_prod_stage, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test, stage_prod_test_test, stage_test_prod_test_stage, stage_prod_test_prod_test, stage_test_test_prod_stage, stage_test_prod_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_stage, stage_test_prod_test_test, stage_prod_test_prod_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_test_stage, stage_test_prod_test_test, stage_test_prod_test_stage, stage_prod_test_test, stage_test_prod_test_stage, stage_prod_test_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_prod_test_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_prod_test_test, stage_test_prod_test_stage, stage_test_prod_test_test, stage_prod_test_test, stage_prod_test_test, stage_prod_test_test,
}

