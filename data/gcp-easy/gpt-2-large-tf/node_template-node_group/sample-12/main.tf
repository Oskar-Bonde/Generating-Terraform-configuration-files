terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create a node template

resource "google_compute_forwarding_rule" "name_0" {
  name = "my-compute-forwarding-rule-${random_suffix}"
  target = google_compute_instance.vm_instance.self_link
  ip_protocol = "TCP"
  port_range = "80"
  ip_address = "10.0.0.0/16"
}

# create a compute node group resource

resource "google_compute_instance_group_manager" "name_1" {
  name = "my-compute-instance-group-manager-${random_suffix}"
  machine_type = "f1-micro"

  network_interface
}

