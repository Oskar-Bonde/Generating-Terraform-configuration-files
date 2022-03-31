terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = "path/to/credentials.json"
  project     = "my-project-id"
  region      = "us-central1"
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_managed_zone" "name_0" {
  name        = "mzone-test-%s"
  dns_name    = "tf-acctest-%s.hashicorptest.com"
  description = "Test zone"
}

