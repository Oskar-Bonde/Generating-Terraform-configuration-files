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

# create google notebooks enviroment#
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-enviroment"
  enviroment_config {
    enviroment_type = "F1-micro"
    notebook_name = "my-notebooks-enviroment"
  }
}

