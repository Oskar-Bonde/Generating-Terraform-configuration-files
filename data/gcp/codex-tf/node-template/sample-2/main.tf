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

# create a node template. Assign a name, set node type to us-central1
# and add the google provider
resource "google_compute_instance_template" "name_0" {
  name = "instance-tpl-%%{random_suffix}"
  machine_type = "n1-standard-1"
  region = "europe-north1"
  source_image = "debian-9-stretch-v20180329"
  disk {
    source_image = "debian-9-stretch-v20180329"
    auto_delete = true
    boot = true
  }
  network_interface {
    network = "default"
  }
  scheduling {
    preemptible = false
    automatic_restart = true
  }
}

