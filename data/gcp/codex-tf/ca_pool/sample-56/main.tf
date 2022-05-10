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
  name     = "ca-1"
  type     = "SUBORDINATE"
  config {
    key_algorithm     = "RSA_4096"
    key_usage         = ["DIGITAL_SIGNATURE", "KEY_ENCIPHERMENT"]
    subject_config {
      subject_alt_name {
        type  = "URI"
        value = "spiffe://example.com/ns/default/sa/default"
      }
    }
  }
  lifecycle {
    create_before_destroy = true
  }
}
