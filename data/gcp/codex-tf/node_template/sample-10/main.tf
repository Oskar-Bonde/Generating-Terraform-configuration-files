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

# create a node template. Assign a name, set node type to n1-node-96-624
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-node-96-624"
  # add a boot disk with ubuntu 18.04
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }
  # add a network interface
  network_interface {
    network = "default"
  }
  # add a metadata item
  metadata {
    foo = "bar"
  }
  # add a service account
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
  # add a label
  labels {
    my-label = "my-label-value"
  }
  tags {
    my-tag = "my-tag-value"
  }
}

