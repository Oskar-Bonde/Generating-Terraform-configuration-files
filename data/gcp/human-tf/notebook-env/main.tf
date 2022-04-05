# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment location europe west 4
resource "google_notebooks_environment" "name_0" {
  name = "notebooks-environment"
  location = "europe-west4-a"  
  container_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
  } 
}