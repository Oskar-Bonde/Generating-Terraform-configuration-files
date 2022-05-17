terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block. Use project terraform-338909 and zone europe west4
provider "google" {
  project = var.project
  zone = "europe-west4-a"
}

