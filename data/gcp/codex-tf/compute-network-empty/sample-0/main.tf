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

# a google compute network resource with name terraform network
resource "google_compute_network" "name_0" {
  name = "terraform-network"
}
