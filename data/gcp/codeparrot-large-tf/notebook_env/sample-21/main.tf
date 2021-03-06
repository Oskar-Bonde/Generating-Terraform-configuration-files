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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    source = "debian-cloud/debian-9"
  }
  machine_image {
    family = "debian-9"
    publisher = "europe-west4-a"
    product_code = "debian-9"
  }
  machine_network_interface {
    network = "default"
  }
  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
  tags = ["secured-data-warehouse"]
}

