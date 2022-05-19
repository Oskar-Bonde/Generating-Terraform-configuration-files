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
  region   = "europe-west4"
  tier     = "ENTERPRISE"
  config {
    subject_config {
      subject {
        common_name = "example.com"
      }
    }
    key_spec = "RSA_4096"
    reuse_key = true
    is_ca = true
    publishing_options {
      ca_certificate = true
      crl_access_methods {
        url = true
      }
    }
  }
}

