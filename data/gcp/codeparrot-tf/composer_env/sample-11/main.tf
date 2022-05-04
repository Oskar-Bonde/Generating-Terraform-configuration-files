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
  region  = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to allow SSH access only from the internet
  network_interface {
    network = "default"
  }

  # Add a default SSH key file to the instance
  connection {
    user = "ubuntu"
    private_key = "${file("~/.ssh/${var.key_name}.pem")}"
    host = "${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}"
  }

  # Create a new SSH key if one is not specified
  provisioner "local-exec" {
    inline = [
      "chmod 600 ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export KEY=${var.key_path}\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_IP=${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_DOMAIN=${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}.xip.io\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_SECRET=${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}.xip.io\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_DOMAIN_NAME=${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}.xip.io\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_SECRET=${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}.xip.io\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_DOMAIN_NAME=${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}.xip.io\" >> ~/.ssh/${var.key_name}.pem' > ~/.ssh/${var.key_name}.pem",
      "sudo sh -c 'echo \"export CONSUL_SERVER_SECRET=
}
