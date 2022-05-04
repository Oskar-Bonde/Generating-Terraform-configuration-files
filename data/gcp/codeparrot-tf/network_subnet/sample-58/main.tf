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

# compute network that auto creates subnetworks
resource "google_compute_subnetwork" "name_0" {
  name          = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.127.0.0/20"
  network       = "default"
}
