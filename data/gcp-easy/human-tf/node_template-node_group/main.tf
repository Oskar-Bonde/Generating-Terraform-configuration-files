# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "europe-north1"
}

# create a node template
resource "google_compute_node_template" "name_0" {
  name      = "soletenant-tmpl"
  node_type = "n1-node-96-624"
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name        = "soletenant-group"
  description = "example google_compute_node_group for Terraform Google Provider"

  size          = 1
  node_template = google_compute_node_template.name_0.id
}