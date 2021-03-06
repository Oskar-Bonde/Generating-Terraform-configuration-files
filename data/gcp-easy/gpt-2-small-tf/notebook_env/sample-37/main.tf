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
  name = "my-notebooks-enviroment"
  enviroment_config {
    variables = {
      PROJECT_ID = var.project_id
    }
  }
}

