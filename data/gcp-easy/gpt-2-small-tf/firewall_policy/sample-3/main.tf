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
  name                                    = "fw-my-firewall"
  network                                  = google_compute_network.my-network.name
  source_ranges                             = ["35.191.0.0/16"]
  allow_stopping_for_update                 = true
  allow_stopping_for_update_for_existing_instances = true
  allow_stopping_for_update_for_existing_namespace = true
  target_tags                              = ["my-instance-group"]
  allow_stopping_for_update_for_existing_namespace = true
  target_tags                              = ["my-instance-group"]
  allow_stopping_for_update_for_existing_namespace = true
  allow_stopping_for_update_for_existing_namespace_namespace = true
  target_tags                               = ["my-instance-group"]
  allow_stopping_for_update_for_existing_namespace_namespace = true
  allow_stopping_for_update_for_existing_namespace_namespace_namespace = true
  target_tags                                = ["my-instance-group"]
  allow_stopping_for_update_for_existing_namespace_namespace = true
  allow_stopping_for_update_for_existing_namespace_namespace_namespace = true
  target_tags                                = ["my-instance-group"]
  allow_stopping_for_update_for_existing_namespace_namespace = true
  target_tags                                = ["my-instance-group"]
  allow_stopping_for_update_for_existing_namespace_namespace = true
  target_tags                                = ["my-instance-group"]
  allow_stopping_for_update_for_existing_names
}

