
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-tcp-%%{random_suffix}"
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
  zone = var.zone
}

# create composer environment in region us-central1

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-tcp-1-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

