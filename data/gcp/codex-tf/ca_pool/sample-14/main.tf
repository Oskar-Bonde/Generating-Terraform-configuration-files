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
  name = "ca-pool"
  type = "SUBORDINATE"
  tier = "ENTERPRISE"
  region = "europe-west4"
  config {
    key_algorithm = "RSA_2048"
    key_usage {
      key_usage = "DIGITAL_SIGNATURE"
    }
    key_usage {
      key_usage = "KEY_ENCIPHERMENT"
    }
    key_usage {
      key_usage = "CERTIFICATE_SIGNING"
    }
    key_usage {
      key_usage = "CRL_SIGNING"
    }
    subject_config {
      subject_type = "SUBJECT_DISTINGUISHED_NAME"
      subject {
        country = "US"
        organization = "Google"
        organizational_unit = "Cloud"
      }
    }
    lifetime {
      lifetime = "ONE_YEAR"
    }
    is_ca = true
    max_chain_length = 1
    policy {
      policy_type = "CUSTOM"
      policy_inputs {
        policy_inputs {
          name = "max_chain_length"
          value = "1"
        }
        policy_inputs {
          name = "allowed_common_names"
          value = "*.google.com"
        }
      }
    }
    crl_config {
      enabled = true
      lifetime {
        lifetime = "ONE_YEAR"
      }
    }
    issuing_options {
      allowed_common_names {
        common_names {
          value = "*.google.com"
        }
      }
    }
    publishing_options {
      ca_certificate = true
      crl_access_methods {
        access_method = "UNSPECIFIED_ACCESS_METHOD"
      }
      crl_publish_period {
        interval = "ONE_DAY"
      }
    }
  }
}

