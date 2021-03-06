terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance" {
  name = "my-compute-instance-ssh"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a node template

resource "google_compute_forwarding_rule" "name_0" {
  name = "my-compute-forwarding-rule-ssh"
  target = google_compute_instance.vm_instance.self_link

  ip_protocol = "TCP"
  ip_address = google_compute_address.vm_instance.address
  subnetwork = google_compute_subnetwork.vm_instance.name
  region = "us-central1"
}

