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

  type = "SUBORDINATE"

  config {
    key_algorithm = "RSA_4096"
    key_usage {
      key_usage = "DIGITAL_SIGNATURE"
    }
    key_usage {
      key_usage = "KEY_ENCIPHERMENT"
    }
    key_usage {
      key_usage = "CERTIFICATE_SIGN"
    }
    key_usage {
      key_usage = "CRL_SIGN"
    }
    subject_config {
      subject_type = "SUBJECT_DISTINGUISHED_NAME"
      subject {
        country_code = "US"
        locality = "Mountain View"
        organization = "Google"
        organizational_unit = "Terraform Testing"
        common_name = "ca.terraform-testing.google.com"
      }
    }
    lifetime {
      lifetime = "P90D"
    }
    is_ca = true
    max_chain_length = 1
    policy {
      policy_type = "CUSTOM"
      policy_data = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjIwMTktMDUtMjJUMTQ6MzA6MjJaIn0.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJzdWIiOiIxMDg0MzIzMzY0NjQ2NzM1Mjg1NjYiLCJhdWQiOiJodHRwczovL2FwaS5nb29nbGVhcGlzLmNvbS9wcml2YXRlY2EvdjEvY2VydGlmaWNhdGVfYXV0aG9yaXRpZXMvZGVmYXVsdCIsImlhdCI6MTU2Mzg3MzYwNiwiZXhwIjox
}

