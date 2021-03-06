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

resource "google_compute_forwarding_rule" "name_1" {
  name = "my-forwarding-rule"
  target = google_compute_target_http_proxy.default.self_link

  ip_protocol = "TCP"
  ip_address  = google_compute_address.default.address
  subnetwork = google_compute_subnetwork.default.name
  region = "us-central1"
}

# create a compute node group resource

resource "google_compute_forwarding_rule" "name_1" {
  name = "my-forwarding-rule-http-proxy"
  target = google_compute_target_http_proxy.default.self_link

  ip_protocol = "TCP"
  ip
}

