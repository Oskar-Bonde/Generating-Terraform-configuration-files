terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create google notebooks enviroment
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-enviroment"
  enviroment_config {
    notebook_config {
      notebook_type = "F1-micro"
    }
  }
}

