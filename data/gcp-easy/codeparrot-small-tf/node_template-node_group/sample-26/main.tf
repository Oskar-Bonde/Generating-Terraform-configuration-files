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
  name = "my-instance-template"
  machine_type = "f1-micro"
  disk {
    source_image = "debian-cloud/debian-9"
    disk_size_gb = "50"
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

# create a compute node group resource# use the node_template resource to create the node group
resource "google_compute_instance_group" "name_1" {
  name = "my-instance-group"
  zone = "us-central1-f"
  description = "Terraform group for Terraform example"
  machine_type = "f1-micro"
  node_template {
    disk {
      auto_delete = true
      boot = true
    }
    network_interface {
      network = "default"
      access_config {
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add external ip to fetch packages
        # add
}

