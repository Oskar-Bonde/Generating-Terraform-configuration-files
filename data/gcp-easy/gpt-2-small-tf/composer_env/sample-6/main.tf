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

# create composer environment in region us-central1
resource "google_compute_environment" "name_0" {
  name = "my-composer-environment"
  region = "us-central1"
  project = "my-project"
  name = "my-composer-environment"
  network = "default"    
  source_tags = ["my-composer-environment"]
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination          = true
    ipv6_address_count              = 0
    security_groups                = [google_compute_secgroup.default.name]
  }
  metadata = {
    startup-script = "echo startup-script"
  }
}

