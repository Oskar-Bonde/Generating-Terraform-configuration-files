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

# create a firewall policyresource "google_compute_firewall" "firewall" {
  name                                    = "my-firewall-rule"
  firewall_name                              = "my-firewall-rule"
  source_ranges                              = ["0.0.0.0/0"]
  target_tags                              = ["my-compute-instance-group"]
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
    protocol = "sctp-tcp-1"
  }
  allow {
    protocol = "sctp-tcp-2"
  }
  allow {
    protocol = "sctp-tcp-3"
  }
  allow {
    protocol = "sctp-udp-1"
  }
  allow {
    protocol = "sctp-udp-2"
  }
  allow {
    protocol = "sctp-udp-3"
  }
  allow {
    protocol = "sctp-tcp-4"
  }
  allow {
    protocol = "sctp-udp-4"
  }
  allow {
    protocol = "sctp-tcp-5"
  }
  allow {
    protocol = "sctp-udp-5"
  }
  allow {
    protocol = "sctp-udp-6"
  }
  allow {
    protocol = "sctp-udp-7"
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
    protocol = "sct
}

