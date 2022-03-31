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
  project     = "terraform-acc-tests"
  region      = "us-central1"
}

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name = "network-%{random_suffix}"
}

