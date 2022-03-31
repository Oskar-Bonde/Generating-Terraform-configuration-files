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
# and set the disk size to 100GB
resource "google_compute_instance_template" "name_0" {
  name        = "${var.name}"
  machine_type = "n1-standard-1"
  disk {
    source_image = "${data.google_compute_image.my_image.self_link}"
    auto_delete  = true
    disk_size_gb = 100
  }
}

# create a compute node group resource. Set size to 1 and use the node template form the previous node template resource id
resource "google_compute_node_group" "name_1" {
  name    = "${var.name}"
  template = "${google_compute_instance_template.name_0.self_link}"
  size    = 1
}

