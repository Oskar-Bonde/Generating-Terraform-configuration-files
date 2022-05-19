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
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "my-instance-template"

  machine_type = "n1-standard-1"

  network_interface {
    network = "default"
  }

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  metadata = {
    foo = "bar"
  }

  service_account {
    email  = "default"
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name        = "my-node-group"
  description = "My node group"

  node_template = google_compute_instance_template.name_0.self_link

  initial_node_count = 3
}

