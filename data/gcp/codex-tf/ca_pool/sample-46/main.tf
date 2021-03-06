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
  key_spec = "EC_P256"
  region = "europe-west4"
  config {
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    reuse_subject = false
    key_id = "kms-key"
    lifetime {
      lifetime {
        years = 1
      }
    }
    is_ca = true
    issuing_options {
      allowed_common_names = ["ca-pool"]
      allow_csr_extension_override = false
      allowed_dns_names = ["ca-pool"]
      allowed_email_addresses = ["ca-pool"]
      allowed_ip_addresses = ["ca-pool"]
      allowed_uris = ["ca-pool"]
    }
    crl_config {
      enabled = true
      expiry_period {
        years = 1
      }
    }
    ca_certificate_config {
      expiry_period {
        years = 1
      }
      lifetime {
        years = 1
      }
    }
  }
}

