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

# create google notebooks enviroment
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  machine_type = "f1-micro"
  location = "us-central1"
  initial_node_count = 1
  network = "default"
  node_count = 1
}

