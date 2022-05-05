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
  name         = "node"
  machine_type = "n1-standard-1"
  can_ip_forward = true

  tags = ["node"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "ubuntu:${file("${path.module}/id_rsa.pub")}"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node"
  zone = var.zone

  node_template = google_compute_instance_template.name_0.self_link
  target_size   = var.size
}

