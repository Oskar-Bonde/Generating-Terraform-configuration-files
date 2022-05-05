terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create dns policy
resource "google_dns_policy" "name_0" {
  name = "my-policy"
}

