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
  region = "us-central1"
  node_type = "n1-standard-1"
  service_account_email = google_service_account.default.email
  tags = ["foo", "bar"]
}

