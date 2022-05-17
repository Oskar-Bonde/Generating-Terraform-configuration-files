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
  name                                   = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network                                 = google_compute_network.network.name
  source_ranges                            = ["0.0.0.0/0"]
  allow_stopping_for_update                = true
  allow_stopping_for_update_for_existing_instances = true
  target_tags                             = ["my-compute-instance-target-tag"]
  allow_stopping_for_update_for_existing_instances = true
  target_tags                             = ["my-compute-instance-target-tag"]
  allow_stopping_for_update_for_existing_instances = true
  target_tags                             = ["my-compute-instance-target-tag"]
  allow_stopping_for_update_for_existing_instances = true
  target_tags                             = ["my-compute-instance-target-tag"]
  allow_stopping_for_update_for_existing_instances = true
  target_tags                              = ["my-compute-instance-target-tag"]
  allow_unverified_ssl                         = false
  target_tags                              = ["my-compute-instance-target-tag"]
  allow_unverified_ssl                         = false
  target_tags                              = ["my-compute-instance-target-tag"]
  allow_unverified_ssl                         = false
  target_tags      
}

