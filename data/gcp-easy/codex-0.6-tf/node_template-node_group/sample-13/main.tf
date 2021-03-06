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

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi &gt; /hello.txt"
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "my-node-group"

  node_template = google_compute_instance_template.name_0.self_link
  target_size   = 1
  zone          = "us-central1-a"
}

