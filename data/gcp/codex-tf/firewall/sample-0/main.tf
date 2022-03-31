terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create compute network, give it a name
resource "google_compute_network" "name_0" {
  name = "network-%s"
  auto_create_subnetworks = true
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web
resource "google_compute_firewall" "name_1" {
  name        = "test-firewall-%s"
  network     = "${google_compute_network.name_0.name}"
  allow       = ["icmp", "tcp:80", "tcp:8080", "tcp:1000-2000"]
  source_tags = ["web"]
}

