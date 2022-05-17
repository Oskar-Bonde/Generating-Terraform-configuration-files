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

  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_instance.address
  subnetwork = google_compute_subnetwork.vm_instance.name
  region = "us-central1"
}

