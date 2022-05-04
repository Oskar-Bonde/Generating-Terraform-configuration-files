terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource
resource "aws_service_quota" "name_0" {
  service = "serviceusage.googleapis.com"
  #quota_class = "projects"
  #quota_amount = "100"
  #quota_unit = "1"
  #quota_credit_types_treatment = "INCLUDE_ALL_CREDITS"
  #quota_credit_types_treatment_types = ["EXCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
  #quota_credit_types_treatment_types_treatment = ["INCLUDE_ALL_CREDITS"]
 
}

