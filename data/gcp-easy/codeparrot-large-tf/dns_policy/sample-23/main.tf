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

# create dns policy
resource "google_dns_policy" "name_0" {
  name        = "dns-policy-${local.name_suffix}"
  enable_inbound_forwarding = true
  project       = var.project_id
  dns_policy_name = google_dns_policy.name_0.name

  labels = {
    foo = "bar"
  }

  access_config {
    nat_ip = google_compute_address.vm_instance.address
  }
}
