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
    "k8s-node",
    "k8s-preemptible",
  ]

  metadata = {
    disable-legacy-endpoints = "true"
  }

  metadata_startup_script = file("${path.module}/startup.sh")

  service_account {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }
}

