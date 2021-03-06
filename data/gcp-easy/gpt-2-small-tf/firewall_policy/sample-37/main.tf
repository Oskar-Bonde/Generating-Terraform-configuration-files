terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a firewall policy
resource "google_compute_firewall" "name_0" {
  name                                 = "my-firewall-allow-firewall"
  network                               = google_compute_network.main.name
  source_ranges                          = ["0.0.0.0/0"]
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "sctp-tcp"
  }
  allow {
    protocol = "udp-1"
  }
  allow {
    protocol = "udp-2"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "sctp-tcp"
  }
  allow {
    protocol = "sctp-udp"
  }
  allow {
    protocol = "sctp-tcp-1"
  }
  allow {
    protocol = "sctp-udp-2"
  }
  allow {
    protocol = "sctp-tcp-3"
  }
  allow {
    protocol = "sctp-udp-4"
  }
  allow {
    protocol = "sctp-tcp-5"
  }
  allow {
    protocol = "sctp-udp-6"
  }
  allow {
    protocol = "sctp-tcp-7"
  }
  allow {
    protocol = "sctp-udp-8"
  }
  allow {
    protocol = "sctp-udp-9"
  }
  allow {
    protocol = "sctp-udp-10"
  }
  allow {
    protocol = "sctp-udp-11"
  }
  allow {
    protocol = "sctp-udp-12"
  }
  allow {
    protocol = "sctp-udp-13"
  }
  allow
}

