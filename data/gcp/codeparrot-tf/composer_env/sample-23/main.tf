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
  name     = local.composer_env_name
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"
      image_version = "latest"
    }
  }

  # Add a network interface to allow SSH access only from the internet
  network_interface {
    subnetwork = "default"
  }

  # Add a default SSH key file to the instance
  ssh_key {
    key_data = "${file(format("~/.ssh/%s", var.key_name))}"
    path = "/home/ubuntu/.ssh/authorized_keys"
  }

  # Create a new SSH key if none exists
  provisioner "local-exec" {
    command = <<EOF
      echo "Creating new SSH key..."
      mkdir -p ~/.ssh
      echo "Host key created."
      echo
      echo "Use `gcloud compute ssh` to generate your key."
      echo
      echo
      echo "Use `gcloud compute copy-files` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen` to generate the public key."
      echo
      echo "Use `gcloud compute copy-files-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-docker` to generate the public key."
      echo
      echo "Use `gcloud compute copy-files-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-vm-ssh-keygen` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-file` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-file` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-file-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-file-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-file-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-file-vm-ssh-keygen` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-file-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-file-vm-file-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-file-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute ssh-keygen-file-vm-ssh-keygen` to copy the public SSH key."
      echo
      echo "Use `gcloud compute copy-files-vm-file-vm-docker` to copy the public SSH key."
      echo
      echo "Use `gcloud compute
}

