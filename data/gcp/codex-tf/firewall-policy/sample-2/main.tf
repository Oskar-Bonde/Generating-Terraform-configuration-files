terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name        = "my-policy"
  description = "Firewall policy for terraform acceptance testing"
  network     = "default"
  priority    = 1000
  direction   = "INGRESS"
  action      = "ALLOW"
  disabled    = false
  log_config {
    enable = true
  }
  depends_on = ["google_compute_network.default"]
}
