terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a firewall policy
resource "google_compute_firewall_policy" "name_0" {
  name = "default-firewall-policy"
}

