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

# create a firewall policy#
resource "google_compute_firewall" "name_0" {
  name                                = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network                             = google_compute_network.network.id
  source_ranges                         = ["0.0.0.0/0"]
  allow_stopping_for_update = true
  allow_stopping_for_update_since_created = true

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
    protocol = "sctp-to-master"
  }

  allow {
    protocol = "sctp-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-worker"
  }

  allow {
    protocol = "sctp-to-node-to-worker"
  }

  allow {
    protocol = "sctp-to-node-to-node"
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
    protocol = "sctp-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-worker"
  }

  allow {
    protocol = "sctp-to-node-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-worker"
  }

  allow {
    protocol = "sctp-to-node-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-node"
  }

  allow {
    protocol = "sctp-to-node-to-node"
  }

  allow {
 
}

