terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-env-${random_suffix}"
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to allow SSH access only from the internet
  network_interface {
    subnetwork = "default"
  }

  # Add a default SSH key file to the instance
  ssh_key {
    key_data = "${file("~/.ssh/id_rsa.pub")}"
  }

  # Create a new VPC to launch our instances into
  vpc_config {
    subnet_ids = ["${aws_subnet.default.id}"]

    tags = ["web"]
  }
}

