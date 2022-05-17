terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_compute_instance_group" "name_1" {
  name = "my-compute-instance-group"
  description = "Allow all inbound forwarding"
  zone = "us-central1-a"

  health_checks = [google_compute_instance.vm_instance.self_link]
}

