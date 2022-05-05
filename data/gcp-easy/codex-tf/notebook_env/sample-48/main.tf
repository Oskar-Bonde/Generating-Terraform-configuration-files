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
  project       = google_project.default.project_id
  region        = google_compute_region.default.name
  machine_type  = "n1-standard-4"
  container_image_uri = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  boot_disk_size_gb = 100
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
}

