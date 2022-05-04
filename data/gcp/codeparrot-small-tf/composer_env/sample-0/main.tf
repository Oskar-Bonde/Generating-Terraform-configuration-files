terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2.0
# with the following configuration:
#   composer-env-id = "REPLACE-WITH-YOUR-ID"
#   composer-env-name = "REPLACE-WITH-YOUR-NAME"
#   composer-env-version = "REPLACE-WITH-YOUR-VERSION"
#   composer-env-instance-id = "REPLACE-WITH-YOUR-INSTANCE-ID"
#   composer-env-instance-type = "REPLACE-WITH-YOUR-INSTANCE-TYPE"
#   composer-env-disk-size = "REPLACE-WITH-YOUR-DISK-SIZE"
#   composer-env-disk-type = "REPLACE-WITH-YOUR-DISK-TYPE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet = "REPLACE-WITH-YOUR-SUBNET"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet = "REPLACE-WITH-YOUR-SUBNET"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet = "REPLACE-WITH-YOUR-SUBNET"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet = "REPLACE-WITH-YOUR-SUBNET"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet = "REPLACE-WITH-YOUR-SUBNET"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer-env-service-account = "REPLACE-WITH-YOUR-SERVICE-ACCOUNT"
#   composer-env-subnet = "REPLACE-WITH-YOUR-SUBNET"
#   composer-env-subnet-secondary-range = "REPLACE-WITH-YOUR-SUBNET-SECONDARY-RANGE"
#   composer
}

