terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policyvariable
resource "google_compute_firewall" "name_0" {
  name = "allow_ssh"
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
}

