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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu.
resource "google_compute_instance" "name_0" {
  name = "my-notebook-instance-%%{random_suffix}"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_forward = true
  can_ip_protocol = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_ipv6 = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_ipv4 = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_ipv6 = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_ipv4 = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_ipv6 = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
  can_ip_ipv4 = true
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2016-trusty","e2-windows-2016-xenial-16.04-amd64"]
}

