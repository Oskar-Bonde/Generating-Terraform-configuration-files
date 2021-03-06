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
  tags         = ["k8s-node"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("${var.public_key_path}")}"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name        = "node-group"
  description = "Node Group"
  node_template = "${google_compute_instance_template.name_0.self_link}"
  node_count = "${var.node_count}"
  zone       = "${var.zone}"
}

