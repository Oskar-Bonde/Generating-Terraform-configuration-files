terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "node-template"
  machine_type = "n1-standard-1"
  tags         = ["node"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("${path.module}/public_key.pub")}"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name        = "node-group"
  description = "Node Group"
  node_template = google_compute_instance_template.name_0.self_link
  node_count = var.node_count
  zone       = var.zone
}

