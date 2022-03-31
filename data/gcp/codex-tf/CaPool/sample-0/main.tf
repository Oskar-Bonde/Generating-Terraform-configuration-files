terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_ssl_policy" "name_0" {
  name        = "ca-policy"
  description = "ca-policy"
  profile     = "MODERN"
  min_tls_version = "TLS_1_2"
  certificate_authority {
    enabled = true
  }
  certificate_transparency_logging_preference = "ENABLED"
  custom_features = ["TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"]
  location = "europe-west4"
  project  = "${var.project}"
}
