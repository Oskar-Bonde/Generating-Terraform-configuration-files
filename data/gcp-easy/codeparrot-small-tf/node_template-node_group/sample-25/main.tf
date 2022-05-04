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
  name = "my-node-template"
  machine_type = "f1-micro"
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

# create a compute node group resourceresource 
resource "google_compute_instance_group" "name_1" {
  name = "my-node-group"
  zone = "us-central1-a"

  named_port {
    name = "http"
    port = 80
  }

  named_port {
    name = "https"
    port = 443
  }

  named_port {
    name = "ssh"
    port = 22
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
