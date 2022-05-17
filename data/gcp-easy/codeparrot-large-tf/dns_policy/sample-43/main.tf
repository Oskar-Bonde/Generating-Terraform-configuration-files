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

# create dns policy
resource "google_dns_policy" "name_0" {
  name        = "dns-policy-${random_suffix}"
  enable_inbound_forwarding = true
  project       = google_project.project.project_id
  dns_policy_name = google_dns_policy.name_0.name

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // SSH
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  // HTTP
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPS
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // HTTPSs
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  // GO
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // DNS
  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  // HTTPs
  allow {
    protocol = "tcp"
    ports
}

