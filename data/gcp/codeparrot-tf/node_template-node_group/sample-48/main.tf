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

# create a node template. Assign a name, set node type to n1-node-96-624
resource "google_compute_node_template" "name_0" {
  name = "my-node-template-${local.name_suffix}"
  region = "europe-west1"

  node_type = "n1-node-96-624"

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
}

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_node_template_group" "name_1" {
  name = "my-node-template-group-${local.name_suffix}"
  zone = "europe-west1-a"

  node_template = google_compute_node_template.name_0.id

  network_interface {
    network = "default"
    access_config {
    }
  }
}
