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

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name = "allow_firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "443",
      "4400",
      "6100",
      "8080",
      "4400",
      "6400",
      "8080",
      "8080",
      "1024",
      "4400",
      "1024",
      "4400",
      "1024",
      "12000",
      "12000",
      "12000",
      "16000",
      "32000",
      "48000",
      "6400",
      "8500",
      "8500",
      "96000",
      "1024",
      "12000",
      "16000",
      "32000",
      "48000",
      "6400",
      "8500",
      "96000",
      "1024",
      "12000",
      "32000",
      "48000",
      "6400",
      "8500",
      "96000",
      "1024",
      "16000",
      "32000",
      "48000",
      "6400",
      "8500",
      "96000",
      "1024",
      "32000",
      "48000",
      "6400",
      "8500",
      "96000",
      "1024",
      "32000",
      "48000",
      "6400",
      "8500",
      "96000",
      "1024",
      "32000",
      "48000",
      "6400",
      "8500",
      "96000",
      "1024",
      "
}

