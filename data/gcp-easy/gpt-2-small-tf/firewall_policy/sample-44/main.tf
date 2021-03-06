terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create a firewall policy
resource "google_compute_firewall" "name_0" {
  name                                     = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network                                    = google_compute_network.network.name
  source_ranges                              = ["35.235.240.0/20"]
  target_tags                                = ["my-compute-instance-tag"]
  allow_stopping_for_update                   = true
  allow_stopping_for_update_update_since_created = true
  allow_unverified_ssl_certificates                = false
  allow_unverified_ssl_certificates_to_change_hostnames = true
  allow_unverified_ssl_certificates_to_change_user_data = true
  allow_unverified_ssl_certificates_to_change_password         = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_change_password_from_existing_user_data = true
  allow_unverified_ssl_certificates_to_
}

