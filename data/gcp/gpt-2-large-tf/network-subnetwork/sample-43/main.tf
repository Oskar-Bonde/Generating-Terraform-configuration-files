terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image, default network interface and a name
resource "google_compute_instance" "name_0" {
  name = "my-vm-linux"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create compute network, give it a name and set auto create subnetworks to false
# the compute network, and the name and the subnetworks
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
# the subnetwork, and the subnetwork
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
}

