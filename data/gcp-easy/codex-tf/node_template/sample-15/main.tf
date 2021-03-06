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
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+ZuxPNt8TFXWBuBuLf8J5noXz4Xfnp4RJZD+Oo7WAnfHdGJkpFqrE1R3/Y9eb2jYw+VA0BLwegVBW4LeoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA0rs9eoYn7YwA
}

