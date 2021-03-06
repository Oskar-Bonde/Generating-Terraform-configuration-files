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
    key_spec = "RSA_4096"
    is_ca    = true
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
  }
  lifetime {
    create_time = "2020-04-01T00:00:00.000Z"
    lifetime    = "8760h"
  }
  issuing_options {
    allowed_config_list = [
      {
        allowed_extensions = [
          "authority_key_id",
          "basic_constraints",
          "crl_distribution_points",
          "ext_key_usage",
          "key_usage",
          "subject_alt_name",
          "subject_key_id",
        ]
        allowed_uses = [
          "ANY",
        ]
        allowed_values = [
          {
            int_value_min = 1
            int_value_max = 1
          },
        ]
      },
    ]
    allowed_subject_dn_list = [
      {
        allowed_values = [
          {
            string_value_min = "ca-pool"
            string_value_max = "ca-pool"
          },
        ]
      },
    ]
    allowed_sans = [
      {
        allowed_values = [
          {
            string_value_min = "ca-pool"
            string_value_max = "ca-pool"
          },
        ]
      },
    ]
  }
  policy {
    policy_name = "policy"
    policy_version = "0"
  }
  state = "ENABLED"
  gcs_bucket = "ca-pool-bucket"
  publishing_options {
    ca_certificate = true
    crl_access_methods = [
      "GCS_BUCKET",

}

