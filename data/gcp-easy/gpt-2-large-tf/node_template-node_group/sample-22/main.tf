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
  name = "my-forwarding-rule"
  target = google_compute_target_http_proxy.vm_proxy.self_link

  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_proxy.address
  subnetwork = google_compute_subnetwork.vm_subnet.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["my-forwarding-rule"]
}

# create a compute node group resource

resource "google_compute_forwarding_rule" "name_1" {
  name = "my-forwarding-rule-http_proxy"
  target = google_compute_target_http_proxy.vm_proxy.self_link

  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_proxy.address
  subnetwork = google_compute_subnetwork.vm_subnet.self_link

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags = ["my-forwarding-rule"]
}

