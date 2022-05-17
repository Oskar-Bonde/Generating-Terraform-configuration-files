
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-%%{random_suffix}"
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
  version = "1.0.0"
}

# bigquery dataset resource

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk
}

