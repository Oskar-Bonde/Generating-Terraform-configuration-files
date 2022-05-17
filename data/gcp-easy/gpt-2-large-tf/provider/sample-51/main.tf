
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-ssh"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# google provider block with only region set to europe north1
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-ssh-disk-instance-type"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

