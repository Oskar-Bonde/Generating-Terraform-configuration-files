terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1 to point to the correct region
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  tags = ["notebooks"]

  # create a boot disk with a boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script = "sudo apt-get update"

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}
