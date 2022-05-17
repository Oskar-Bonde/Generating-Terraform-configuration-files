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
  machine_type = "f1-micro"

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

  # install nginx and serve a simple web page
  metadata = {
    startup-script = <<-EOF1
      #! /bin/bash
      set -euo pipefail

      export DEBIAN_FRONTEND=noninteractive
      apt-get update
      apt-get install -y nginx-light jq

      NAME=node-template
      IP=static
      LOCATION=public
      MACHINE_URL=http://node-template-internal.example.com:8080
      EXTERNAL_IP=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/hostname")
      EXTERNAL_ZONE=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/ip")
      EXTERNAL_ZONE=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/gateway")
      EXTERNAL_IP_PRIVATE=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/network-ip")
    EOF
  }

  # install nginx and serve a simple web page
  metadata = {
    startup-script = <<-EOF1
      #! /bin/bash
      set -euo pipefail

      export DEBIAN_FRONTEND=noninteractive
      apt-get update
      apt-get install -y nginx-light jq

      NAME=node-template
      IP=static
      LOCATION=public
      MACHINE_URL=http://node-template-internal.example.com:8080
      EXTERNAL_IP=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/hostname")
      EXTERNAL_ZONE=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/ip")
      EXTERNAL_ZONE=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/gateway")
      EXTERNAL_IP_PRIVATE=$(curl -s -S -g --insecure -o /dev/null --header "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/network-ip")
    EOF
  }

  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}

# create a compute node group resource
resource "google_compute_node
}

