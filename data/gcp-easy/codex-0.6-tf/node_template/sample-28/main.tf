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
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["kubernetes"]
  disk {
    source_image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts"
    auto_delete = true
    boot = true
  }
  network_interface {
    network = "default"
  }
  metadata = {
    "user-data" = "${file("${path.module}/user-data.sh")}"
  }
}

