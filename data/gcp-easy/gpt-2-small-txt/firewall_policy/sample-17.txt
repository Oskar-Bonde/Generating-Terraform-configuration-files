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

# create a firewall policyresource "google_compute_firewall" "firewall" {
  name                                    = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network                                  = google_compute_network.network.id
  source_ranges                             = ["35.235.240.0/20"]
  target_tags                              = ["my-compute-instance-tag"]
  allow_stopping_for_update                 = true
  allow_stopping_for_update_for_existing_zones      = true
  allow_unverified_ssl_certificates              = true
  allow_unverified_ssl_certificates_to_change_hostnames = true
  target_tags                              = ["my-compute-instance-tag"]
  allow_stopping_for_update_for_existing_zones = true
  allow_unverified_ssl_certificates_to_change_hostnames = true
  target_tags                              = ["my-compute-instance-tag"]
  allow_unverified_ssl_certificates_to_change_hostnames = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway       = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true
  allow_unverified_ssl_certificates_to_change_vpn_gateway_interface = true

}

