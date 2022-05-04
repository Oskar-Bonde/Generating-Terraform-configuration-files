terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with region set to europe north1
provider "google" {
  region = "europe-west1"
}

