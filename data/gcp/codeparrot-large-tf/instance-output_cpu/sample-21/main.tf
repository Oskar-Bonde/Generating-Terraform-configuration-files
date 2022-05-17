terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# a compute instance that has a name, machine type f1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-vm2"
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

# output the cpu platform used by the compute instance
output "name_1" {
  value = "${google_compute_instance.vm_instance.network_interface.0.access_config.0.assigned_nat_ip}"
}
