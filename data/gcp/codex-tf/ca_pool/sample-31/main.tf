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
    key_spec = "RSA_4096"
    ca_options {
      is_ca                 = true
      max_issuer_path_length = 0
    }
    lifetime {
      lifetime {
        years = 1
      }
    }
    signing_algorithm = "SHA256_RSA_PSS_2048_SHA256"
    subject_config {
      subject {
        common_name = "ca.example.com"
      }
    }
    key_usage {
      key_usage = "DIGITAL_SIGNATURE"
    }
    key_usage {
      key_usage = "KEY_CERT_SIGN"
    }
    key_usage {
      key_usage = "CRL_SIGN"
    }
    policy_ids {
      policy_id = "anyPolicy"
    }
    crl_config {
      custom_crl_config {
        expiry {
          days = 7
        }
        lifetime {
          days = 7
        }
        interval {
          days = 7
        }
      }
    }
    issuing_options {
      include_ca_cert_url = true
      include_crl_access_url = true
    }
  }
}

