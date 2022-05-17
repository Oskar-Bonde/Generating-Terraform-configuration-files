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

# create google notebooks enviromentresource "google_notebooks_env" {
  name = "notebooks-env"
  env = google_notebooks_env.value
}

