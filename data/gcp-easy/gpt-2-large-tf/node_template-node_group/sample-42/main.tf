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

resource "google_compute_firewall" "name_0" {
  name    = "my-firewall-default"
  network = google_compute_network.default.name
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

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol
}

# create a compute node group resource

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-%%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud
}

