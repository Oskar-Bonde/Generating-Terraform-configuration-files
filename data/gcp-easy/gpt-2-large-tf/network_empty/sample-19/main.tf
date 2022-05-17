
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# google provider block
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-disk-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# a google compute network resource

resource "google_compute_network" "name_2" {
  name = "my-network-default"
  auto_create_subnetworks = false
}

