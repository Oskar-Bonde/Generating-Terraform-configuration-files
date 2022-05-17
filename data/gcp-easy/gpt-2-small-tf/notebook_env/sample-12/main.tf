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
  name = "notebooks-enviroment"
  project = var.project_id
  enviroment_config {
    annotations = {
      "stackdriver.googleapis.com/v1/projects/locations/global/locations" = "projects/locations/global/locations"
    }
  }
}

