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
  config {
    key_spec = "RSA_4096"
    ca_options {
      is_ca                 = true
      max_issuer_path_length = 0
    }
    lifetime {
      lifetime {
        days = 365
      }
    }
    signing_algorithm = "SHA256_RSA_PSS_2048_SHA256"
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    publish_ca_cert = true
    publish_crl     = true
  }
}

