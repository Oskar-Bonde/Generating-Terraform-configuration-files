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

# create google notebooks enviromentresource "google_notebooks_enviroment" {
  name = "notebooks-enviroment"
  enviroment_config {
    notebook_config {
      notebook_type = "notebook"
    }
  }
}

