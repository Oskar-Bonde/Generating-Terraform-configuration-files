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
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    reuse_key = true
    is_ca = true
    lifetime {
      lifetime = "P10Y"
    }
    signing_algorithm = "SHA256_RSA_PSS_2048_SHA256"
    key_id = "key-id"
    gcs_bucket = "gcs-bucket"
    gcs_bucket_region = "europe-north1"
    access_urls {
      ca_certificate_access_url = "https://ca-certificate-access-url"
      crl_access_url = "https://crl-access-url"
    }
  }
}

