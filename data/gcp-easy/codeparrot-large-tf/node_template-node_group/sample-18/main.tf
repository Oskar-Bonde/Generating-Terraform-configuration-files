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
resource "google_compute_node_template" "name_0" {
  name = "my-node-template"

  provider = google.target
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "my-node-group"

  # create node template
  node_template = google_compute_node_template.name_0.id

  # create node group
  depends_on = [google_compute_node_template.name_0]
}

