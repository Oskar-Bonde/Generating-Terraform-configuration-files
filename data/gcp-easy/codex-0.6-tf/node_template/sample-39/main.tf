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
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8Ll+jVJz+yf8g+pB+u/j+Z9+8Y+/2s/W/Z/4M/q/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8/w/8
}

