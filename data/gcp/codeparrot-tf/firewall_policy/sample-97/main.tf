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
  name = "my-firewall-policy"
  network = "default"
  source_ranges = ["10.0.0.0/8"]
  direction = "INGRESS"
  priority = 1
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  allow {
    protocol = "udp"
    ports = ["80"]
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
    protocol = "udp-eh"
  }
  allow {
    protocol = "udp-psh"
  }
  allow {
    protocol = "sctp-psh"
  }
  allow {
    protocol = "udp-acm"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol = "sctp-udp-1-2"
  }
  allow {
    protocol =
}

