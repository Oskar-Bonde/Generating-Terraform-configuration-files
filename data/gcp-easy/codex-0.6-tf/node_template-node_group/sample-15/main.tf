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
  project     = var.project
  region      = var.region
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "node-template"
  machine_type = "n1-standard-1"
  tags         = ["node"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
  }

  metadata = {
    startup-script = file("${path.module}/node.sh")
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name     = "node-group"
  zone     = var.zone
  node_template = google_compute_instance_template.name_0.self_link
  initial_node_count = var.initial_node_count
}

