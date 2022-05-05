terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/service-account.json")
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
    "kubernetes-node",
  ]

  network_interface {
    network = "default"
  }

  metadata = {
    "user-data" = templatefile("${path.module}/user-data.sh", {
      kube_master_ip = google_compute_instance.master.network_interface.0.access_config.0.nat_ip
    })
  }

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  zone = var.zone
  node_template = google_compute_instance_template.name_0.self_link
  target_size = var.node_count
}

