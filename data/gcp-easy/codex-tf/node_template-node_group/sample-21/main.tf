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
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "node-template"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    startup-script = file("${path.module}/startup.sh")
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name     = "node-group"
  location = "us-central1-a"
  node_template = google_compute_instance_template.name_0.self_link
  target_size = 1
}

