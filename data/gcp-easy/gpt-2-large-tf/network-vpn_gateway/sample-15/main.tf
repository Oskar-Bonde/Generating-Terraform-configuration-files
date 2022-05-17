
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
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-2"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network

resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-disk-3"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute ha vpn gateway

resource "google_compute_instance" "name_3" {
  name = "my-compute-instance-disk-4"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}
