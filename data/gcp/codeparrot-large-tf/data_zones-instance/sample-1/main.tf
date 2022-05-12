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

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
data "google_compute_zones" "name_0" {
  region = "europe-west4"
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name to the instance
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-2"
  machine_type = "f1-micro"
  zone = "europe-west4-a"
  network_interface {
    network = "default"
    access_config {
      # Ephemeral
    }
  }
  metadata = {
    startup-script = <<EOT
#!/bin/bash
echo EOT

set -euf -o pipefail

# install Terraform.
terraform {
  required_version = ">= 0.12"
}

