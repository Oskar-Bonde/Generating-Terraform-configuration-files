terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment location europe west 4
resource "google_notebooks_environment" "name_0" {
  name = "notebooks-environment"
  description = "Notebooks environment"
  location = "europe-west4"
  container_image = "gcr.io/deeplearning-platform-release/base-cpu"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 20
  is_default = true
  metadata = {
    "disable-legacy-endpoints" = "true"
  }
  service_account {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
