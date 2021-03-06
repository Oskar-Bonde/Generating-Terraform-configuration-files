terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name                                     = "my-firewall"
  network                                   = google_compute_network.main.name
  source_ranges                             = ["130.211.0.0/22", "35.191.0.0/16"]
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
    protocol = "sctp-udp"
  }
  allow {
    protocol = "sctp-tcp"
  }
  allow {
    protocol = "sctp-udp-1"
  }
  allow {
    protocol = "sctp-udp-2"
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
    protocol = "sctp-tcp-10"
  }
  allow {
    protocol = "sctp-udp-11"
}

