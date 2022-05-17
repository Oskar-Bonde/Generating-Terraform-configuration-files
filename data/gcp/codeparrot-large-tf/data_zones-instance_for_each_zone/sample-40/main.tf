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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  region = "europe-west4"
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name.
resource "google_compute_instance" "name_1" {
  name = "my-vm"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }

  # create a public IP address
  public_ip = "10.0.0.5"

  # create a private IP address
  network_interface {
    network = "default"
  }

  # create a private IP address
  network_interface {
    network = "default"
  }

  # create a public and private route table
  route_table {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.1.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.2.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.3.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.4.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.5.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.6.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.7.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.8.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.9.0/24"
    nat_gateway_id = "${google_compute_address.vm_instance.address}"
  }

  # create a private and public route table
  route_table {
    cidr_block = "10.0.10.0/24"
    nat_gateway_id = "${
}

