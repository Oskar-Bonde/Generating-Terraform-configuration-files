terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy"

  # DNS
  zone_name = "europe-west1-b"

  # recordsets
  rrdatas = ["${google_compute_instance.vm_instance.network_interface.0.access_config.0.assigned_nat_ip}"]

  # records
  records = ["${google_compute_instance.vm_instance.network_interface.0.access_config.0.assigned_nat_ip}"]
}

