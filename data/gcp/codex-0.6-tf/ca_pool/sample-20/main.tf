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
  tier = "ENTERPRISE"
  region = "europe-west4"
  config {
    key_algorithm = "RSA_4096"
    reusable_config = "my-reusable-config"
    subject_config {
      subject {
        common_name = "example.com"
      }
    }
    lifetime {
      lifetime {
        days = 365
      }
    }
    issuance_policy {
      policy {
        allowed_config_list {
          allowed_config {
            reusable_config = "my-reusable-config"
          }
        }
      }
    }
    ca_options {
      is_ca = true
      max_chain_length = 1
    }
    publishing_options {
      ca_certificate = true
      crl_access_methods {
        access_uri = true
      }
    }
  }
}

