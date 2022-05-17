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

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = "my_model"
  region = "us-central1"
  description = "my model"
  training_budget = "2000"
  is_causal = "false"
  is_president = "true"
  is_president_enabled = "true"
  is_causal_enabled = "true"
  is_dedicated = "false"
  is_dedicated_enabled = "true"
  is_non_president = "true"
  is_non_president_enabled = "true"
  is_federated_enabled = "true"
  is_non_federated_enabled = "true"
  is_federated_causal_enabled = "true"
  is_non_federated_causal_enabled = "true"
  is_federated_mcc_enabled = "true"
  is_non_federated_mcc_enabled = "true"
  is_mcc_enabled = "true"
  is_non_mcc_enabled = "true"
  is_proxy_only_enabled = "true"
  is_proxy_only_causal_enabled = "true"
  is_proxy_only_non_causal_enabled = "true"
  is_proxy_only_federated_mcc_enabled = "true"
  is_proxy_only_non_federated_mcc_enabled = "true"
  is_proxy_only_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_mcc_attestation_enabled = "true"
  is_non_federated_mcc_attestation_allowed = "true"
  is_non_federated_mcc_attestation_enabled = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_mcc_attestation_enabled = "true"
  is_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_mcc_attestation_enabled = "true"
  is_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_non_federated_mcc_attestation_enabled = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_federated_mcc_attestation_enabled = "true"
  is_non_federated_mcc_attestation_allowed = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "true"
  is_non_federated_mcc_attestation_enabled = "true"
  is_proxy_only_non_federated_mcc_attestation_allowed = "
}

