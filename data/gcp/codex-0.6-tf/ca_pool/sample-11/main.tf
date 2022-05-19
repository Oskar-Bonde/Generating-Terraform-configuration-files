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
  config {
    key_spec = "RSA_4096"
    subject_config {
      subject {
        common_name = "ca.example.com"
      }
    }
    reuse_subject = false
    is_ca = true
    max_chain_length = 1
    key_id = "kms-key-id"
    lifetime {
      lifetime = "P90D"
    }
    signing_algorithm = "SHA256_RSA_PSS_2048_SHA256"
    policy {
      policy_id = "policy-id"
      policy_type = "CUSTOM"
      policy_inputs {
        fields {
          name = "issuance_requirements"
          value = "conditions: '@or'\n  - condition: '@issuer_not_expired'\n  - condition: '@request_auth_time_in_range'\n    args:\n      not_before: '2020-01-01T00:00:00Z'\n      not_after: '2021-01-01T00:00:00Z'\n  - condition: '@request_purpose_server_auth'\n  - condition: '@request_purpose_client_auth'\n  - condition: '@request_purpose_code_signing'\n  - condition: '@request_purpose_email_protection'\n  - condition: '@request_purpose_time_stamping'\n  - condition: '@request_purpose_ocsp_signing'\n  - condition: '@request_purpose_ip_address'\n    args:\n      ip_addresses:\n        - '10.0.0.0/8'\n        - '172.16.0.0/12'\n        - '192.168.0.0/16'\n  - condition: '@request_purpose_any'\n  - condition: '@request_purpose_none'\n  - condition: '@request_purpose_vpn_client'\n  - condition: '@request_purpose_vpn_server'\n  - condition: '@request_purpose_smart_card_logon'\n  - condition: '@request_purpose_windows_client_auth'\n  - condition: '@request_purpose_windows_server_auth'\n  - condition: '@request_purpose_windows_code_signing'\n  - condition: '@request_purpose_windows_kdc'\n  - condition: '@request_purpose_windows_driver_signing'\n  - condition: '@request_purpose_windows_system_component_verification'\n  - condition: '@request_purpose_windows_time_stamping'\n  - condition: '@request_purpose_windows_ip_security_end_system'\n  - condition: '@request_purpose_windows_ip_security_tunnel_termination'\n  - condition: '@request_purpose_windows_ip_security_user'\n  - condition: '@request_purpose_windows_ip_security_policy_signing'\n  - condition: '@request_purpose_windows_eap_host'\n  - condition: '@request_purpose_windows_any'\n  - condition: '@request_purpose_windows_none'\n  - condition: '@request_purpose_ms_code_ind'\n  - condition: '@request_purpose_ms_code_com'\n  - condition: '@request_purpose_ms_ctl_sign'\n  - condition: '@request_purpose_ms_sgc'\n  - condition: '@request_purpose_ms_efs'\n  - condition: '@request_purpose_ms_smart_card_login'\n  - condition: '@request_purpose_ms_encrypting_file_system'\n  - condition: '@request_purpose_ms_license_server'\n  - condition: '@request_purpose_ms_qualified_subordination'\n  - condition: '@request_purpose_ms_key_recovery
}

