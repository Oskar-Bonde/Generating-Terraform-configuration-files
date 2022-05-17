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
      IP=${google_compute_address.gcp_sap_hana_intip_ip.address}
      METADATA=${google_compute_instance_metadata.vm_instance.metadata}
      INSTANCE_NAME=node-template
      INSTANCE_TYPE=n1-standard-1
      EXPLAIN_CONFIG=${var.vm_instance_extra_config}
      #!/bin/bash
      echo "---start installing node---"
      echo "---finish installing node---"
      sleep 10
      EOF
    EOF1
  }
}

