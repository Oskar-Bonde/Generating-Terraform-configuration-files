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
  name = "notebooks-enviroment"
  enviroment_config {
    annotations = {
      "automation.googleapis.com/v1/projects/my-project/global/locations/arena/global" = "projects/my-project/global/locations/arena/global"
    }
  }
}

