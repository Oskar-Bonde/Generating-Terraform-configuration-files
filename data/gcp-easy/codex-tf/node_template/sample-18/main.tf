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
  name_prefix = "node-"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["allow-ssh"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata {
    ssh-keys = "ubuntu:${file("${path.module}/id_rsa.pub")}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

