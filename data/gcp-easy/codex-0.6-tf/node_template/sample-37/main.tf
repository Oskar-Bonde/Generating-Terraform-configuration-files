terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "template-test"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["foo", "bar"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

