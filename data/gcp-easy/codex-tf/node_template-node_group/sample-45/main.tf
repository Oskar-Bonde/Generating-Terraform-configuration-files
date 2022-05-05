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
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["terraform", "node"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  description = "Node group for terraform"
  node_template = google_compute_instance_template.name_0.self_link
  target_size = 3
  zone = "us-central1-a"
}

