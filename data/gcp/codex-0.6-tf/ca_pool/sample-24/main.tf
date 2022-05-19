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

  name = "ca-pool"
  type = "SUBORDINATE"
  tier = "ENTERPRISE"
  region = "europe-west4"

  config {
    key_algorithm = "RSA_4096"
    key_usage {
      key_usage = "CERTIFICATE_SIGNING"
    }
    subject_config {
      subject_alt_name {
        custom_sans = [
          "DNS:example.com",
          "DNS:*.example.com",
        ]
      }
    }
    lifetime {
      lifetime = "P1Y"
    }
    is_ca = true
    issuing_options {
      include_ca_cert_url = true
      include_crl_access_url = true
    }
  }
}

