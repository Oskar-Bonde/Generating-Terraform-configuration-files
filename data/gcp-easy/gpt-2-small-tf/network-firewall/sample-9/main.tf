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

# create compute networkresource "google_compute_network" "default" {
  name = "my-network-1"
  project = var.project_id
  network = google_compute_network.default.self_link
}

# create compute firewall
}

