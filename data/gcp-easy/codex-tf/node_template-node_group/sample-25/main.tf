terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "my-template"
  machine_type = "n1-standard-1"
  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "my-node-group"
  description = "My node group"
  node_template = google_compute_instance_template.name_0.self_link
  target_size = 3
  initial_node_count = 1
  autoscaling {
    min_node_count = 1
    max_node_count = 5
  }
}

