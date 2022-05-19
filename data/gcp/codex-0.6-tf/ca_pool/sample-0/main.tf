terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_privateca_certificate_authority" "name_0" {
  provider = google-beta
  project  = "my-project"
  name     = "my-ca-pool"
  type     = "SUBORDINATE"
  tier     = "ENTERPRISE"
  region   = "europe-west4"
  config {
    key_spec = "RSA_4096"
    is_ca    = true
  }
  lifetime {
    create_time = "2020-05-01T00:00:00.000Z"
    lifetime    = "8760h"
  }
  publish_ca_certificate = true
  publish_crl            = true
}

