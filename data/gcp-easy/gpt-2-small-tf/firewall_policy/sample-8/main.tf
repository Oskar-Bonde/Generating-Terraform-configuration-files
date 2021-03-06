terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a firewall policy
resource "google_compute_firewall" "name_0" {
  name                                     = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network                                  = google_compute_network.network.id
  source_ranges                             = ["0.0.0.0/0"]
  target_tags                              = ["my-compute-instance-tag"]
  allow_stopping_for_update                  = true
  allow_stopping_for_update_since_finalization = true
  allow_unverified_ssl_certificates_to_be_enabled = true
  allow_unverified_ssl_certificates_to_be_destroy       = true
  allow_unverified_ssl_certificates_to_be_destroy = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be_destroy_after_update_since = true
  allow_unverified_ssl_certificates_to_be
}

