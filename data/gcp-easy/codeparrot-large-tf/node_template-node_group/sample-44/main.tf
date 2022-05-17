terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name_prefix  = "node-template-"
  machine_type = "f1-micro"
  can_ip_forward = true

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resourcevariable
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-node-group-manager"
  base_instance_name = "vm"
  zone         = "us-central1-a"

  version {
    instance_template = google_compute_instance_template.name_0.id
  }

  target_size  = 1
  named_port {
    name = "http"
    port = 80
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

