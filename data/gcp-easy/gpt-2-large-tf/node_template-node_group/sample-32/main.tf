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
  name = "my-compute-forwarding-rule"
  target = google_compute_instance.vm_instance.self_link

  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_instance.address
  region = "us-central1"

  ip_protocol = "TCP"
  ip_address  = google_compute_address.vm_instance.address
  region = "us-central1"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource

resource "google_compute_instance_group_manager" "name_1" {
  name = "my-compute-instance-group-manager"
  zone = "us-central1-a"

  # HTTP
  # HTTP_name = "my-compute-to-group-manager"
  machine_type = "f1-micro"

  # HTTP_security_group_ids = [google_compute_security_group.vm_instance_group_manager.id]
  # HTTP_security_group_id = "default"
  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_ids = [google_compute_security_group.vm_instance_group_manager.id]
  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  # HTTP_security_group_id_suffix = "default"

  #
}

