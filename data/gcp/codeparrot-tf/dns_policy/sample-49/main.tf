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
  name = "dns-policy-${random_suffix}"
  zone_name = "europe-west1-b"

  # DNS zone name where the instance is created
  zone_dns_name = "dsp-envs"

  # DNS record name where the instance is created
  record_name = "dsp-envs"

  # DNS record name to allow DNS lookups
  rrdatas = ["${google_compute_instance.vm_instance.network_interface.0.access_config.0.assigned_nat_ip}"]
}
