terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
resource "google_compute_firewall" "name_0" {
  name = "my-firewall-vm"
  network = "default"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["80"]
  }

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_tags = ["my-firewall-vm"]

  target_tags = ["my-firewall-vm"]
}

# ml engine model resource. With default name and in europe west 4 regions.
resource "google_compute_firewall" "name_1" {
  name = "my-firewall-http"
  network = "default"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_tags = ["my-firewall-http"]

  target_tags = ["my-firewall-http"]
}

