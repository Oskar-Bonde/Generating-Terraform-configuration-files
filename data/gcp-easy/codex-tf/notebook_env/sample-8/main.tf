terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name     = var.name
  project  = var.project
  location = var.region
  # create a new service account for the environment
  service_account {
    display_name = "service account for ${var.name}"
  }
  # create a new network for the environment
  network {
    name = "network for ${var.name}"
  }
  # create a new subnetwork for the environment
  subnetwork {
    name = "subnetwork for ${var.name}"
  }
  # create a new firewall rule for the environment
  firewall_rule {
    name = "firewall rule for ${var.name}"
  }
  # create a new route for the environment
  route {
    name = "route for ${var.name}"
  }
}
