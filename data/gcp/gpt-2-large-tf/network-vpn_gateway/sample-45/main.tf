terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
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

# create compute network with global routing mode and set auto create subnetworks to false
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
}

