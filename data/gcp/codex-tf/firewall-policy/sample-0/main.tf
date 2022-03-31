terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name        = "my-firewall"
  description = "Firewall Policy for Terraform acceptance testing"
  network     = "default"
  priority    = 1000
  direction   = "INGRESS"
  action      = "ALLOW"
  denied_ports = [22]
  allowed_ports = [80]
  depends_on = ["google_compute_network.default"]
}

