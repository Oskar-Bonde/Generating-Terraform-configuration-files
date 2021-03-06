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
    key_spec = "RSA_4096"
    reuse_key = true
    is_ca = true
    max_chain_length = 1
    expiry = "8760h"
    lifetime = "87600h"
    crl_config {
      enabled = true
      expiry = "24h"
    }
    issuing_options {
      allowed_config_list = ["ALLOW_ANY_REUSABLE"]
    }
    signing_algorithm = "SHA256_RSA_PSS"
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
  }

  certificate_policy {
    policy_id = "policy-id"
    policy_type = "CUSTOM"
    policy_inputs {
      fields {
        name = "allowed_extensions"
        value = "basic_constraints,authority_key_identifier,subject_key_identifier,key_usage,extended_key_usage,authority_info_access,subject_alt_name,issuer_alt_name,crl_distribution_points,certificate_policies,policy_mappings,inhibit_any_policy,name_constraints,policy_constraints"
      }
      fields {
        name = "allowed_dns_names"
        value = "*.example.com"
      }
      fields {
        name = "allowed_ip_addresses"
        value = "10.0.0.0/8,192.168.0.0/16"
      }
      fields {
        name = "allowed_email_addresses"
        value = "admin@example.com"
      }
      fields {
        name = "allowed_uri_dns_names"
        value = "*.example.com"
      }
      fields {
}

