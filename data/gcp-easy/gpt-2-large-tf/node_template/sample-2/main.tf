terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# create a node template

resource "google_compute_forwarding_rule" "name_0" {
  name        = "my-compute-forwarding-rule"
  target      = google_compute_instance.vm_instance.self_link
  port_range  = "80"
  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_instance.address
  ip_address_type = "INTERNAL"
}

