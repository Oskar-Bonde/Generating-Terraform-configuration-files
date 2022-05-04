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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2.0.yaml
# Use the following command to configure the composer environment:
# terraform apply -var "composer-env-file" -var "composer-env-variables" -var "composer-env-instance-name" "composer-env-instance-name"
# terraform apply -var "composer-env-file" -var "composer-env-variables" -var "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type"
# terraform apply -var "composer-env-file" -var "composer-env-variables" -var "composer-env-instance-machine-image" "composer-env-instance-image" "composer-env-instance-image" "composer-env-instance-image" "composer-env-instance-image"
# terraform apply -var "composer-env-file" -var "composer-env-variables" -var "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-image" "composer-env-instance-image" "composer-env-instance-image" "composer-env-instance-image" "composer-env-instance-image" "composer-env-instance-image" "composer-env-instance-image"
# terraform apply -var "composer-env-file" -var "composer-env-variables" -var "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance-machine-type" "composer-env-instance
}

