terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance" {
  name = "my-compute-instance-a"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a node template

resource "google_compute_forwarding_rule" "name_0" {
  name = "my-compute-forwarding-rule-a"
  target = google_compute_instance.vm_instance.self_link

  ip_protocol = "tcp"
  ip_address  = google_compute_address.vm_instance.address
  subnetwork = google_compute_subnetwork.vm_instance.name
  region = "us-central1"

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-1.html
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-2.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-3.html
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-4.html
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-5.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-6.html
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-7.html
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-8.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-9.html
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-10.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-11.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-12.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-13.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute/docs/compute-forwarding-rule-14.html
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # TODO: https://cloud.google.com/compute
}

