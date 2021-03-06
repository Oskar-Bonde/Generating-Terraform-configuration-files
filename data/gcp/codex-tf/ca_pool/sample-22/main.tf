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

  tier = "ENTERPRISE"

  region = "europe-west4"

  config {
    key_algorithm = "RSA_4096"

    subject_config {
      subject {
        common_name = "My CA"
      }
    }

    reuse_subject = false

    lifetime {
      lifetime {
        years = 1
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

    policy_ids {
      policy_id = "1.3.6.1.4.1.11129.2.5.2"
    }

    policy_ids {
      policy_id = "1.3.6.1.4.1.11129.2.5.3"
    }

    policy_ids {
      policy_id = "1.3.6.1.4.1.11129.2.5.4"
    }

    policy_ids {
      policy_id = "1.3.6.1.4.1.11129.2.5.5"
    }

    policy_ids {
      policy_id = "1.3.6.1.4.1.
}

