terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux-%{random_suffix}"
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

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-http"
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

