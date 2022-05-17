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
    enviroment_type = "notebook"
    notebook_name = "my-notebooks-enviroment"
  }
}

