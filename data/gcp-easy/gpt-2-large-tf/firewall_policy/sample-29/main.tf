
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# create a firewall policy

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

  source_tags = ["default"]

  target_tags = ["default"]
}

