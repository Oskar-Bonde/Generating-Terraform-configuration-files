terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  {{if. google_compute_instance.vm_instance)
  {{if. google_compute_instance.vm_instance_http_proxy)
  {{if. google_compute_instance.vm_instance_http_proxy_http_proxy)
}

# create composer environment in region us-central1

resource "google_compute_firewall" "name_0" {
  name    = "allow_all"
  network = "default"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-all"]
}

