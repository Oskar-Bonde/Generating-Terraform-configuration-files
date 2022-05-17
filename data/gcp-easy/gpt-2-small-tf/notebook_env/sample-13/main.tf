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

# create google notebooks enviromentvariable
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-enviroment"
  enviroment_id = "my-enviroment"
}

