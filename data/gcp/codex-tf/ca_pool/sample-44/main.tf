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
    key_algorithm = "RSA_2048"
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    reuse_subject = false
    is_ca         = true
    lifetime {
      lifetime {
        days = 365
      }
    }
    issuing_options {
      include_ca_cert_url = true
      include_crl_access_url = true
    }
  }
}

