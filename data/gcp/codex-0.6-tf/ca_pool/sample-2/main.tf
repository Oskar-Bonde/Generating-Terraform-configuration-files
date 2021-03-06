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
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
  }

  certificate_policy {
    allowed_config_list {
      allowed_subject_alt_names {
        include_email = true
        include_dns = true
      }
    }
  }

  issuing_options {
    allow_csr_key_reuse = true
    include_ca_certificate = true
    include_crl_access_url = true
  }
}

