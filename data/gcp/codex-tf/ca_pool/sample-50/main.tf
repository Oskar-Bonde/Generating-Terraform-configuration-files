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
  region   = "europe-west4"
  config {
    key_spec = "RSA_2048"
    ca_options {
      is_ca                  = true
      max_issue_lifetime     = "P90D"
      expiry                 = "P1Y"
      csr_include_cn         = true
      csr_include_hostname   = true
      csr_include_uri        = true
      csr_include_ip_sans    = true
      csr_include_email_sans = true
      csr_include_dns_sans   = true
      csr_include_upn_sans   = true
      csr_include_subject_alt_name = true
      csr_include_extended_key_usage = true
      csr_include_any_extended_key_usage = true
      csr_include_custom_sans = true
      csr_include_custom_oid_sans = true
      csr_include_custom_oid_extension = true
      csr_include_custom_extension = true
      csr_include_custom_attribute = true
      csr_include_custom_attribute_extension = true
      csr_include_custom_attribute_oid_extension = true
      csr_include_custom_attribute_oid = true
      csr_include_custom_attribute_values = true
      csr_include_custom_attribute_values_extension = true
      csr_include_custom_attribute_values_oid_extension = true
      csr_include_custom_attribute_values_oid = true
      csr_include_custom_attribute_values_oid_extension_values = true
      csr_include_custom_attribute_values_oid_extension_values_extension = true
      csr_include_custom_attribute_values_oid_extension_values_oid
}

