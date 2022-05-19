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

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = true

  tags = ["${var.node_tags}"]

  network_interface {
    network = "default"
  }

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  metadata {
    ssh-keys = "ubuntu:${file("${var.public_key_path}")}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/cloud-platform"]
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  description = "Node group for cluster"
  node_template = "${google_compute_instance_template.name_0.self_link}"
  target_size = "${var.node_count}"
  zone = "${var.zone}"
}

