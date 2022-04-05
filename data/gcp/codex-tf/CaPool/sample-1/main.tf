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
resource "google_compute_ssl_certificate" "name_0" {
  name        = "ca-cert-%s"
  description = "ca-cert-%s"
  private_key = file("test-fixtures/ssl/ca/ca.key")
  certificate = file("test-fixtures/ssl/ca/ca.crt")
  region      = "europe-north1"
  is_ca       = true
  certificate_management_profile {
    ca_certificate_id = google_compute_ssl_certificate.name_0.id
    ca_certificate_description = google_compute_ssl_certificate.name_0.description
    ca_certificate_name = google_compute_ssl_certificate.name_0.name
    certificate_transparency_logging_preference = "LOG_NONE"
    issuing_ca_certificate_id = google_compute_ssl_certificate.name_0.id
    issuing_ca_certificate_description = google_compute_ssl_certificate.name_0.description
    issuing_ca_certificate_name = google_compute_ssl_certificate.name_0.name
    revocation_configuration_type = "CRL_CONFIGURATION"
    crl_configuration {
      crl_distribution_points = ["https://www.letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem"]
    }
  }
}

