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
  name = "my-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["foo", "bar"]

  network_interface {
    network = "default"
  }

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "my-group"
  description = "my-group-description"
  node_template = google_compute_instance_template.name_0.self_link
  target_size = 3
  initial_node_count = 1
  zone = "us-central1-a"
}

