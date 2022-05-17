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

# create storage bucket resource

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-default"
  network = google_compute_network.default.name
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

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default_tags}"]

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  source_tags = ["${var.default
}

# create compute backend bucket resource

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-default"
  network = google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol =
}

