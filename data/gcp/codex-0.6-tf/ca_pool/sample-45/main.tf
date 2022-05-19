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
    key_algorithm = "RSA_2048"
    key_usage {
      key_usage = "DIGITAL_SIGNATURE"
    }
    subject_config {
      subject_alt_name {
        type = "URI"
        value = "spiffe://example.com/ns/default/sa/default"
      }
    }
    lifetime {
      lifetime = "P90D"
    }
    is_ca = true
    issuing_options {
      include_ca_cert_url = true
      include_crl_access_url = true
    }
  }
}

