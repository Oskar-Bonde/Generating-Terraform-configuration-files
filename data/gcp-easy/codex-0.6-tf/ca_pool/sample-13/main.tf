terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_ssl_policy" "name_0" {
  name                    = "my-ssl-policy"
  profile                 = "MODERN"
  min_tls_version         = "TLS_1_2"
  custom_features         = ["TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"]
  enable_tls_1_3          = true
  disable_ssl_policy_hsts = true
  disable_ssl_policy_ssl3 = true
  disable_ssl_policy_tls1 = true
  disable_ssl_policy_tls1_1 = true
}

