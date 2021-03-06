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
  name = "my-dns-policy-${random_suffix}"
  description = "policy for dns zone"
  location = "global"
  description = "policy for dns zone"
  type = "A"
  rrdatas = [google_compute_instance.vm_instance.network_interface.0.access_config.0.assigned_nat_ip]
}

