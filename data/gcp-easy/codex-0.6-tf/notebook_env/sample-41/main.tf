terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name          = "my-notebook-env"
  project       = "my-project"
  region        = "us-central1"
  machine_type  = "n1-standard-4"
  disk_size_gb  = 50
  network       = "default"
  subnetwork    = "default"
  service_account = "my-service-account@my-project.iam.gserviceaccount.com"
}

