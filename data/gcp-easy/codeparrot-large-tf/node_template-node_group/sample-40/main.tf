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

# create a node template
resource "google_compute_node_template" "name_0" {
  name = "my-node-template"

  provider = google.target

  node_type = "n1-standard-1"

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "my-node-group"

  # Add node to a compute instance group
  node_template = google_compute_node_template.name_0.id
  zone = "us-central1-a"

  # Add node to a network interface
  network_interface {
    network = "default"
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add node to a node group
  node_group = google_compute_node_group.name_1.id
  # Add node to a service account
  service_account = "create"
}

