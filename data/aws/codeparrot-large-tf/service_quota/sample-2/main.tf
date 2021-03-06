terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 7500 for production
resource "aws_service_quota" "name_0" {
  provider = "aws.us-east-1"
  name = "service-quota"
  resource = "service"
  in_scope_access = "allow"
  # set the quota for the service
  in_scope_access_policy = "ALLOW"
  # set the quota for the service
  in_scope_access_policy_quota = "100"
  # set the quota for the service
  in_scope_access_policy_quota_period = "100"
  # set the quota for the service
  in_scope_access_policy_quota_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value = "100"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_value = "100"
  # set the quota for the service
  in_scope_access_policy_quota_metric_value = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric_value_metric_value = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_period_metric_value_metric_value_metric = "1"
  # set the quota for the service
  in_scope_access_policy_quota_value_metric_value_metric_value_metric = "1"
  # set the quota for
}

