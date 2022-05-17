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

# create a node template
resource "google_compute_instance_template" "name_0" {
  name_prefix  = "node-template-"
  machine_type = "n1-standard-1"
  can_ip_forward = true

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    startup-script = <<-EOF1
      #!/bin/bash
      sudo apt-get update
      apt-get install -y nginx-light jq
      NAME=node-template
      IP=static
      IP_ADDRESS=static
      LOCATION=public
      MASTER=node-1
      WORKLOADER_COUNT=3
      WORKLOADER_INSTANCE_ID=node-1-id
      WORKLOADER_PRIVATE_IP=static.0.ip_address
      WORKLOADER_PUBLIC_IP=static.0.ip_address
    EOF
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

# create a compute node group resource
resource "google_compute_instance
}

