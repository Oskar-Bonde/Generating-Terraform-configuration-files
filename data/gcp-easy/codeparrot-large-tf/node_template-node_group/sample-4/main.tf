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
  can_ip_forward = true

  disk {
    source_image = "debian-cloud/debian-9"
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }

  tags = ["node"]

  # install nginx and serve a simple web page
  metadata = {
    startup-script = <<-EOF1
      #! /bin/bash
      set -euo pipefail

      export DEBIAN_FRONTEND=noninteractive
      apt-get update
      apt-get install -y nginx-light jq

      NAME=node-template
      IP=$(curl -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/hostname")
      METADATA=$(curl -f -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/attributes/?recursive=True" | jq 'del(.["startup-script"])')

      cat <<EOF > /var/www/html/index.html
      <pre>
      Name: $NAME
      IP: $IP
      Metadata: $METADATA
      </pre>
      EOF
    EOF1
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}

# create a compute node group resource
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-group-manager-${random_suffix}"
  zone = "us-central1-a"

  version {
    instance_template = google_compute_instance_template.name_0.id
    name              = "primary"
  }

  target_pools       = ["${google_compute_target_pool.pool.self_link}"]
  base_instance_name = "vm"
  target_size        = 1
}

