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
  name        = "my-compute-forwarding-rule"
  target      = google_compute_instance.vm_instance.self_link
  ip_protocol = "tcp"
  ip_address  = google_compute_address.vm_address.address
  subnetwork = google_compute_subnetwork.vm_subnet.self_link
}

# create a compute node group resource

resource "google_compute_forwarding_rule" "name_1" {
  name        = "my-compute-forwarding-rule-http"
  target      = google_compute_instance.vm_instance.self_link
  ip
}

