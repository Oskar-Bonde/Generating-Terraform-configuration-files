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
  name = "my-instance-template-${random_suffix}"
  machine_type = "f1-micro"
  disk {
    source_image = "debian-cloud/debian-9"
    disk_size_gb = "50"
    auto_delete = true
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}

# create a compute node group resource 
resource "google_compute_instance_group" "name_1" {
  name = "my-instance-group-${random_suffix}"
  zone = "us-central1-a"
  description = "my-instance-group-${random_suffix}"
  instances = [google_compute_instance.vm_instance.self_link]
}

