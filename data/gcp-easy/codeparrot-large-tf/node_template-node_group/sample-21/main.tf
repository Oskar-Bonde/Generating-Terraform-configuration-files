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
  can_ip_forward = false

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

  metadata {
    sshKeys = "ubuntu:${file("~/.ssh/${var.key_name}.pub")}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}

# create a compute node group resource
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-group-manager-${random_suffix}"
  zone = "us-central1-a"

  version {
    instance_template = google_compute_instance_template.name_0.id
    name              = "1.0.0"
  }

  base_instance_name = "my-instance-1"
  target_size        = 1

  named_port {
    name = "http"
    port = 80
  }

  version {
    instance_template = google_compute_instance_template.name_0.id
    name              = "1.0.0"
  }

  # install nginx and serve a simple web page
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -y nginx"

  network_interface {
    network = "default"
    access_config {
    }
  }

  # install simple web page
  metadata_startup_script = "sudo apt-get install -y nginx"

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}

