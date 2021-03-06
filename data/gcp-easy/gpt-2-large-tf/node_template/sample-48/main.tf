terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create a node template

resource "google_compute_forwarding_rule" "name_0" {
  name = "my-compute-forwarding-rule"
  target = google_compute_instance.vm_instance.self_link
  port = "443"
  ip_protocol = "TCP"
  ip_address = google_compute_address.default.address
  ip_address_type = "INTERNAL"
  region = "us-central1"
}

