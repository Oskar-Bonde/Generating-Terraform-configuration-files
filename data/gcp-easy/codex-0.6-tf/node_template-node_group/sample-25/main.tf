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

  tags = [
    "kubernetes",
    "kubernetes-the-hard-way",
  ]

  disk {
    source_image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-1804-lts"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("${path.module}/id_rsa.pub")}"
  }

  metadata_startup_script = file("${path.module}/startup.sh")
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  zone = var.zone
  node_count = var.node_count
  node_template = google_compute_instance_template.name_0.self_link
}

