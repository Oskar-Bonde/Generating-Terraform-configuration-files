terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create a node template. Assign a name, set node type to us-central1
# and set the disk size to 10GB.
resource "google_compute_instance_template" "name_0" {
  name         = "node-template"
  machine_type = "n1-standard-1"
  disk {
    source_image = "debian-9-stretch-v20180806"
    auto_delete  = true
    boot         = true
    disk_size_gb = 10
  }
}

