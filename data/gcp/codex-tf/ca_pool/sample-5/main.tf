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
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    key_spec = "RSA_4096"
    reuse_key = true
    lifetime {
      lifetime {
        days = 365
      }
    }
    is_ca = true
    key_usage {
      key_usage = "CRL_SIGN"
    }
    key_usage {
      key_usage = "DIGITAL_SIGNATURE"
    }
    key_usage {
      key_usage = "KEY_CERT_SIGN"
    }
    key_usage {
      key_usage = "KEY_ENCIPHERMENT"
    }
    key_usage {
      key_usage = "NON_REPUDIATION"
    }
    key_usage {
      key_usage = "DATA_ENCIPHERMENT"
    }
    key_usage {
      key_usage = "KEY_AGREEMENT"
    }
    key_usage {
      key_usage = "ENCIPHER_ONLY"
    }
    key_usage {
      key_usage = "DECIPHER_ONLY"
    }
    key_usage {
      key_usage = "SERVER_AUTH"
    }
    key_usage {
      key_usage = "CLIENT_AUTH"
    }
    key_usage {
      key_usage = "CODE_SIGNING"
    }
    key_usage {
      key_usage = "EMAIL_PROTECTION"
    }
    key_usage {
      key_usage = "TIME_STAMPING"
    }
    key_usage {
      key_usage = "OCSP_SIGNING"
    }
    key_usage {
      key_usage = "ANY"
    }
    key_usage {
      key_usage = "ANY_CA"
}

