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
  name = "my-fw-policy"
  network = "default"
  source_ranges = ["10.0.0.0/8"]
  direction = "INGRESS"
  priority = 1
  project = "organizations/12345"
  source_tags = ["joerdability"]
}

