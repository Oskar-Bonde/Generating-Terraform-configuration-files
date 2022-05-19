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
  key_spec = "RSA_4096"
  region = "europe-west4"
  enable_certificate_authority = true
  enable_certificate = true
  enable_crl = true
  enable_csr = true
  enable_certificate_revocation_list = true
  enable_certificate_authority_audit_logging = true
  enable_certificate_authority_dns_names = true
  enable_certificate_authority_dns_names_config = true
  enable_certificate_authority_dns_names_config_failover = true
  enable_certificate_authority_dns_names_config_failover_config = true
  enable_certificate_authority_dns_names_config_failover_config_failover_time = true
  enable_certificate_authority_dns_names_config_failover_config_failover_time_seconds = true
  enable_certificate_authority_dns_names_config_failover_config_failover_time_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_threshold = true
  enable_certificate_authority_dns_names_config_failover_config_failover_threshold_percentage = true
  enable_certificate_authority_dns_names_config_failover_config_failover_threshold_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_threshold_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_percentage = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_percentage = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_percentage = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_percentage = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_value_percentage = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_value_units = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_value_value = true
  enable_certificate_authority_dns_names_config_failover_config_failover_value_value_value_value_value_value_percentage = true
  enable_certificate_authority_dns
}

