terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["http-server", "https-server"]

  network_interface {
    network = "default"
  }

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  metadata {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+Zux9dw3blXwtFr8P6o3y1WlgtOjG4VTXu6/1nsyyRXzWhqO4QP9c0XV6SHin4tP9S3izHSHGgXzUQn8gP9H6Pt8yS8wS4wW2fcJXwO4cDv8u4qoP+t0t+J5wqyChpUvOtQzWgJ3fZOPtEuF/fFZOv8v6wV1n6yVyZ3dGJQ1s5tC+P+YqU9qJtb3ZF0P+WtMh+cP8B1nsyyRXzWhqO4QP9c0XV6SHin4tP9S3izHSHGgXzUQn8gP9H6Pt8yS8wS4wW2fcJXwO4cDv8u4qoP+t0t+J5wqyChpUvOtQzWgJ3fZOPtEuF/fFZOv8v6wV1n6yVyZ3dGJQ1s5tC+P+YqU9qJtb3ZF0P+WtMh+cP8B1"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

