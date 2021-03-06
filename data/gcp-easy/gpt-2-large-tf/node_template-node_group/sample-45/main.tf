
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-nodes-%%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# create a node template

resource "google_compute_forwarding_rule" "name_2" {
  name        = "my-compute-forwarding-rule-${local.name_suffix}"
  target      = google_compute_instance.vm_instance.self_link
  ip_protocol = "TCP"
  ip_address  = google_compute_address.default.address
  subnetwork = google_compute_subnetwork.default.name
  region        = var.region
}

# create a compute node group resource

resource "google_compute_forwarding_rule" "name_2" {
  name        = "my-compute-forwarding-rule-${local.name_suffix}"
  target      = google_compute_instance.vm_instance.self_link
  ip_protocol = "TCP
}

