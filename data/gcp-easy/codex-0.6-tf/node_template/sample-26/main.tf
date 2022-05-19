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
  name = "node-template"
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
      // Include this section to give the VM an external ip address
    }
  }

  metadata {
    ssh-keys = "user:${file("${path.module}/id_rsa.pub")}"
  }
}

