terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebook-env"
  # create a VM instance for the notebook
  vm_image_name = "notebooks-vm-image"
  # create a disk for the notebook
  disk_size_gb = "20"
  disk_type = "pd-standard"
  # create a network for the notebook
  network = "default"
  subnetwork = "default"
  # create a service account for the notebook
  service_account = "default"
  # create a firewall rule for the notebook
  firewall_rule = "default"
}

