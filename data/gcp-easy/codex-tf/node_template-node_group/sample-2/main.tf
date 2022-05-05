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
  can_ip_forward = false
  tags = ["node"]

  disk {
    source_image = "ubuntu-os-cloud/ubuntu-1804-lts"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "ubuntu:${file("${var.ssh_pub_key}")}"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  description = "Node group"
  node_template = "${google_compute_instance_template.name_0.self_link}"
  target_size = 1
  initial_node_count = 1
  zone = "${var.zone}"
}

