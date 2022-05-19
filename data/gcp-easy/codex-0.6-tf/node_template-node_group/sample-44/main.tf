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
  name = "node-template"
  machine_type = "n1-standard-1"
  tags = ["node"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "root:${file("${var.public_key_file}")}"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  description = "Node group for node-template"
  node_template = "${google_compute_instance_template.name_0.self_link}"
  target_size = 1
  initial_node_count = 1
}

