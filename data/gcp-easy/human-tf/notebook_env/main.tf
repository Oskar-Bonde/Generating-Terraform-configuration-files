# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "europe-north1"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "notebooks-environment"
  location = "europe-west4-a"  
  container_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
  } 
}