terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project
  region  = var.region
  zone  = var.zone
}

# create a node template

resource "google_compute_forwarding_rule" "name_1" {
  name        = "my-compute-forwarding-rule"
  target      = google_compute_instance.vm_instance.self_link
  ip_protocol = "TCP"
  port_range  = "80"
  ip_address  = google_compute_address.vm_instance.address
  subnetwork = google_compute_subnetwork.vm_instance.name
  region      = var.region
}

# create a compute node group resource

resource "google_compute_forwarding_rule" "name_1" {
  name        = "my-compute-forwarding-rule"
  target      = google_compute_instance.vm_instance.self_link
  ip_protocol = "TCP"
}

