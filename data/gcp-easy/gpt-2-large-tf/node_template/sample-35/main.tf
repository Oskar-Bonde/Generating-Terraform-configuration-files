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
}

# create a node template

resource "google_compute_forwarding_rule" "name_0" {
  name        = "my-forwarding-rule-${local.name_suffix}"
  target      = google_compute_target_http_proxy.default.self_link
  port_range  = "80"
  ip_protocol = "TCP"
  ip_address  = google_compute_address.default.address
  ip_address_type = "INTERNAL"
  load_balancing_scheme = "INTERNAL"
  load_balancing_key  = "INTERNAL"
  ip_address            = google_compute_address.default.address
}

