terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a firewall policy
resource "google_compute_firewall_policy" "name_0" {
  name = "default-firewall-policy"
}

