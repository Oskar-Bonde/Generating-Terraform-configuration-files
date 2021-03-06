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

  # Notebooks must be created in the first public network.
  # You can create more than one public network at a time
  # See https://cloud.google.com/compute/docs/instances/create#create_network_interface
  network_interface {
    network = "default"
    access_config {
    }
  }
}

