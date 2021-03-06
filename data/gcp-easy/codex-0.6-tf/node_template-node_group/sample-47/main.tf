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
  can_ip_forward = true

  tags = ["kubernetes"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    "kube-env" = "..."
    "user-data" = "..."
  }

  disk {
    source_image = "projects/ubuntu-os-cloud/global/images/ubuntu-1604-xenial-v20170815a"
    auto_delete  = true
    boot         = true
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name               = "node-group"
  description        = "node group"
  node_template      = google_compute_instance_template.name_0.self_link
  initial_node_count = var.node_count
}

