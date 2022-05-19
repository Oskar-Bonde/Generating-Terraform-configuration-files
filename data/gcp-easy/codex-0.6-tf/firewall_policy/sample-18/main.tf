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
  project     = "my-project"
  region      = "us-central1"
}

# create a firewall policy
resource "google_compute_firewall_policy" "name_0" {
  name = "my-firewall-policy"
  description = "my firewall policy"
}

