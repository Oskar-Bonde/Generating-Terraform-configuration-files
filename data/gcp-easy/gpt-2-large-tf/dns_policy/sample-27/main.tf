
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-1"
  machine_type = "f1-micro"

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

# create dns policy

resource "google_compute_instance_group_manager" "name_1" {
  name = "my-compute-instance-group-manager"
  description = "my-compute-instance-group-manager"

  health_checks = [google_compute_instance.vm_instance.self_link]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_size = "Standard_A0"

  target_tags = [google_compute_instance_group_manager.name_1.self_link]
}

