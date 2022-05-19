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
    key_algorithm = "RSA_2048"
    reuse_subject = true
    subject_alt_name {
      type = "URI"
      value = "http://example.com"
    }
    lifetime {
      lifetime {
        days = 365
      }
    }
    issuance_policy {
      ca_reusable_config {
        allowed_config_list {
          key_algorithm = "RSA_2048"
          lifetime {
            lifetime {
              days = 365
            }
          }
          subject_alt_name {
            type = "URI"
            value = "http://example.com"
          }
        }
      }
    }
    crl_config {
      enabled = true
    }
    ca_certificate_config {
      enabled = true
    }
  }
}

