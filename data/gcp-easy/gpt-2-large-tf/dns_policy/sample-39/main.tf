terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance" {
  name = "my-compute-instance-ssh"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create dns policy

resource "google_compute_firewall" "name_0" {
  name    = "allow-ssh"
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

  source_tags = ["allow-ssh"]

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["allow-ssh"]

  allow {
    protocol = "udp"
    ports    = ["80"]
  }

  source_tags = ["allow-ssh"]

  allow {
    protocol = "icmp"
    ports    = ["80"]
  }

  source_tags = ["allow-ssh"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  allow {
    protocol = "udp"
    ports    = ["80"]
  }

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_tags = ["allow-ssh"]

  source_
}

