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

# create compute network, give it a name
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web, ssh, and https web. Use a target_tags.io firewall rule to allow port 22,443 and 80,443 to allow all.
resource "google_compute_firewall" "name_1" {
  name = "my-firewall-${random_suffix}"
  network = "default"
  source_ranges = ["10.0.0.0/8"]
  target_tags = ["test-tag"]
}
