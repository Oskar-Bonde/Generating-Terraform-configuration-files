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
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      # Add a remote-exec provisioner
      script = "scripts/install.sh"
    }
  }

  # Add a remote-exec provisioner
  provisioner "local-exec" {
    command = "chmod +x /home/ubuntu/.bashrc"
  }

  # Create a container
  depends_on = [google_composer_environment.name_0]
}

