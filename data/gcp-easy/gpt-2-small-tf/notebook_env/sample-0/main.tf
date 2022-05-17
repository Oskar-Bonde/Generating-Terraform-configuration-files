terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create google notebooks enviroment
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-enviroment"
  enviroment_config {
    region = "us-central1"
    notebook_type = "notebook"
  }
}

