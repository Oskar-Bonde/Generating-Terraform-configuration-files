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
  is_preview = "false"
  is_dedicated = "false"
  is_enhanced_bay = "false"
  is_private_build_project = "false"
  is_pricing_plan = "false"
  is_processing_tech_review = "false"
  is_support_audit = "false"
  is_user_managed = "false"
  is_xpn_project = "false"
  is_xpn_managed_policy = "false"
  is_trusted_xpn_project = "false"
  is_xpn_shared_vpc = "false"
  is_xpn_trusted_vpc = "false"
  is_xpn_utility_enabled = "false"
  is_xpn_trusted_vpc_project = "false"
  is_xpn_trusted_vpc_project_id = "false"
  is_xpn_trusted_vpc_network = "false"
  is_xpn_trusted_vpc_subnetwork = "false"
  is_xpn_trusted_vpc_region = "us-central1"
  is_xpn_trusted_vpc_subnetwork_region = "us-central1"
  is_xpn_trusted_vpc_tags = "true"
  is_xpn_trusted_vpc_storage_class = "STANDARD"
  is_xpn_trusted_vpc_type = "PREMIUM"
  is_xpn_trusted_vpc_user_labels = "my_user_labels"
  is_xpn_trusted_vpc_user_name = "my_user_name"
  is_xpn_trusted_vpc_user_email = "my_user_email"
  is_xpn_trusted_vpc_user_role = "my_user_role"
  is_xpn_trusted_vpc_user_type = "PREMIUM"
  is_xpn_trusted_vpc_user_system_role = "my_user_system_role"
  is_xpn_trusted_vpc_user_create_network = "true"
  is_xpn_trusted_vpc_user_create_network_allow_ssh = "true"
  is_xpn_trusted_vpc_user_create_network_allow_internal = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn_tunnel = "true"
  is_xpn_trusted_vpc_user_create_network_allow_regional = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn_with_nat = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn_reverse_dns = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn_reverse_dns_and_gw = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn_reverse_dns_and_gw_ipv6 = "true"
  is_xpn_trusted_vpc_user_create_network_allow_vpn_reverse_dns_and_gw_ipv6_reverse = "true"
  is_xpn_trusted_
}

