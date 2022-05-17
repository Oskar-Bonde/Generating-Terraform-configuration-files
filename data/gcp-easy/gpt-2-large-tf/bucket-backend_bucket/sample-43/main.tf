terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-from-tcp"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create storage bucket resource

resource "google_compute_firewall" "name_1" {
  name    = "allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-ssh"]
}

# create compute backend bucket

resource "google_compute_firewall" "name_2" {
  name    = "allow-ssh-to-master"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_
}

