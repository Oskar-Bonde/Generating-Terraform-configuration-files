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
    key_usage {
      key_usage = "DIGITAL_SIGNATURE"
    }
    key_spec {
      algorithm = "RSA_2048"
    }
    lifetime {
      lifetime = "P90D"
    }
    is_ca = true
    subject_config {
      subject_type = "SUBJECT_DISTINGUISHED_NAME"
      subject {
        country = "US"
        locality = "Mountain View"
        organization = "Google"
        organizational_unit = "Cloud"
      }
    }
    crl_config {
      enabled = true
    }
    issuing_options {
      include_ca_cert_url = true
    }
  }
}

