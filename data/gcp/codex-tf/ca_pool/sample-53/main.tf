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
  name     = "ca-pool"
  type     = "SUBORDINATE"
  tier     = "ENTERPRISE"
  region   = "europe-west4"
  config {
    key_spec = "RSA_2048"
    lifetime {
      units = "MONTHS"
      value = 24
    }
    reuse_key = true
    ca_options {
      is_ca                 = true
      max_issuer_path_length = 0
      path_length_constraint = 0
    }
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    publishing_options {
      ca_certificate = true
      crl_access_methods = [
        "UNSPECIFIED",
        "HTTP_DELIVERY",
      ]
    }
  }
}

