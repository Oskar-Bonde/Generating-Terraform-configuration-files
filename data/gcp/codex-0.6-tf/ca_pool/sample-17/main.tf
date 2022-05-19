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

  key_spec = "RSA_2048"
  key_id = "key-1"

  lifecycle {
    create_before_destroy = true
  }

  certificate_policy {
    allowed_config_list = [
      "ALLOW_ANY_BASIC_CONSTRAINTS",
      "ALLOW_ANY_EXTENDED_KEY_USAGE",
      "ALLOW_ANY_KEY_USAGE",
      "ALLOW_ANY_SUBJECT_ALT_NAME",
      "ALLOW_ANY_SUBJECT_DIRECTORY_ATTRIBUTES",
      "ALLOW_ANY_SUBJECT_INFO_ACCESS",
      "ALLOW_ANY_SUBJECT_NAME",
      "ALLOW_ANY_VALIDITY",
    ]
    allowed_lint_list = [
      "ALLOW_EXPIRED_CERTIFICATE",
      "ALLOW_EXTERNALLY_SIGNED",
      "ALLOW_INVALID_DNS_NAME",
      "ALLOW_INVALID_NULL_ISSUER",
      "ALLOW_INVALID_NULL_SUBJECT",
      "ALLOW_INVALID_NULL_SUBJECT_ALT_NAME",
      "ALLOW_INVALID_NULL_SUBJECT_DIRECTORY_ATTRIBUTES",
      "ALLOW_INVALID_NULL_SUBJECT_INFO_ACCESS",
      "ALLOW_INVALID_NULL_SUBJECT_NAME",
      "ALLOW_INVALID_NULL_SUBJECT_PUBLIC_KEY",
      "ALLOW_INVALID_NULL_SUBJECT_SERIAL_NUMBER",
      "ALLOW_INVALID_NULL_VALIDITY",
      "ALLOW_INVALID_NULL_VERSION",
      "ALLOW_INVALID_PUBLIC_KEY",
      "ALLOW_INVALID_SIGNING_ALGORITHM",
      "ALLOW_INVALID_SUBJECT_ALT_NAME",
      "ALLOW_INVALID_SUBJECT_DIRECTORY_ATTRIBUTES",
      "ALLOW_INVALID_SUBJECT_INFO_ACCESS",
      "ALLOW_INVALID_SUBJECT_NAME",
      "ALLOW_INVALID_SUBJECT_PUBLIC_KEY",
      "ALLOW_INVALID_SUBJECT_SERIAL_NUMBER",
      "ALLOW_INVALID_SUBJECT_SIGNATURE",
      "ALLOW_INVALID_VALIDITY",
      "ALLOW_INVALID_VERSION",
      "ALLOW_MISSING_SIGNING_ALGORITHM",
      "ALLOW_MISSING_SUBJECT_ALT_NAME",
      "ALLOW_MISSING_SUBJECT_DIRECTORY_ATTRIBUTES",
      "ALLOW_MISSING_SUBJECT_INFO_ACCESS",
      "ALLOW_MISSING_SUBJECT_NAME",
      "ALLOW_MISSING_SUBJECT_PUBLIC_KEY",
      "ALLOW_MISSING_SUBJECT_SERIAL_NUMBER",
      "ALLOW_MISSING_SUBJECT_SIGNATURE",
      "ALLOW_MISSING_VALIDITY",
      "ALLOW_MISSING_VERSION",
      "ALLOW_NON_CA_ISSUER",
      "ALLOW_NON_CA_ISSUER_WITH_NON_EMPTY_PATH_LEN",
      "ALLOW_NON_CA_ISSUER_WITH_PATH_LEN",
      "ALLOW_NON_CA_ISSUER_WITH_PATH_LEN_ZERO",
      "ALLOW_NON_CA_ISSUER_WITH_UNLIMITED_PATH_LEN",
      "ALLOW_NON_RFC_3820_ISSUER",
      "ALLOW_NON_RFC_3820_S
}

