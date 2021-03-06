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
  name = "my-forwarding-rule-ssh"
  target = google_compute_instance.vm_instance.self_link

  ip_protocol = "tcp"
  ip_address = google_compute_address.default.address
  subnetwork = google_compute_subnetwork.default.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["my-forwarding-rule-ssh"]
}

