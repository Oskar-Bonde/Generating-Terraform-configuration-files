terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# a compute instance that has boot disk debian-9 image, 
# network interface default, is type e2-medium and has a name
resource "google_compute_instance" "default" {
  name         = "instance-test"
  machine_type = "e2-medium"
  zone         = "europe-north1-a"

  boot_disk {
    initialize_params {
      image = "debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a firewall policy. Set parent to 
# "organizations/12345" and set short name to my policy
resource "google_compute_firewall_policy" "default" {
  parent      = "organizations/12345"
  short_name  = "my-policy"
  description = "Example Resource"
}



