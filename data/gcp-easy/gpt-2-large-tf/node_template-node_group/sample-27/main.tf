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
  ip_protocol = "TCP"
  port_range  = "80"
  ip_address  = "10.0.0.0/16"
  target      = google_compute_target_http_proxy.name_1.self_link
  region        = var.region
  target_size = "Standard_A0"
}

# create a compute node group resource

resource "google_compute_target_http_proxy" "name_1" {
  name        = "my-compute-target-http-proxy"
  description = "The port to use for the node group"
  port_range  = "80"
  ip_address  = "10.0.1.0/24"
  health_checks = [google_compute_http_health_check.vm_instance_http_health_check.self_link]
}

