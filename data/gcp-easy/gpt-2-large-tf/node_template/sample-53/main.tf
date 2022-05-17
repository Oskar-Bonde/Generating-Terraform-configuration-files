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
  name        = "my-compute-forwarding-rule-${random_suffix}"
  target      = google_compute_target_http_proxy.vm_instance_http_proxy.self_link
  port_range  = "80"
  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_instance_address.address
  ip_address_type = "INTERNAL"
}

