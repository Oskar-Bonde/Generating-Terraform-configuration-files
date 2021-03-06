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

# create dns policy
resource "google_dns_policy" "name_0" {
  name = var.name
  description = var.description
  network = var.network
  alternative_name_server_set = var.alternative_name_server_set
  enable_inbound_forwarding = var.enable_inbound_forwarding
  enable_logging = var.enable_logging
  kind = var.kind
  visibility = var.visibility
}

