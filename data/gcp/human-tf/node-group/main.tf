# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a node template. Assign a name, set node type to us-central1
resource "google_compute_node_template" "name_0" {
  name      = "soletenant-tmpl"
  node_type = "n1-node-96-624"
}

# create a compute node group resource. Set size to 1 and use the node template form the previous node template resource id
resource "google_compute_node_group" "name_1" {
  name        = "soletenant-group"
  description = "example google_compute_node_group for Terraform Google Provider"

  size          = 1
  node_template = google_compute_node_template.name_0.id
}