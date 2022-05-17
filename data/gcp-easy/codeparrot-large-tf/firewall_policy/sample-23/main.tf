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

# create a firewall policy 
resource "google_compute_firewall" "name_0" {
  name = "my-firewall-policy"
  network = "default"
  source_ranges = ["10.0.0.0/8"]
  target_tags = ["www-node"]
}

