terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block. Use project terraform-338909 and zone europe west4
provider "google" {
  credentials = file("/home/terraform/.credentials/terraform-provider-google.json")
  project     = "terraform-338909"
  region      = "europe-west4"
}

