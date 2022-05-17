terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# a compute instance resource
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-%{random_suffix}"
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

# an output blockvariable "instance_name" {
#       value = "my-instance-%{random_suffix}"
#       description = "Name of the instance"
#       output_type = "INT64"
#       value = "my-instance-%{random_suffix}"
#       source = "./instance-name"
#       source_type = "image"
#       output_from_port = "0"
#       to_port = "0"
#       ip_protocol = "TCP"
#       source_address_prefix = "0.0.0.0/0"
#       destination_address_prefix = "0.0.0.0/0"
#       source_port_range = "*"
#       destination_address_prefix = "*"
#       source_address = "*"
#       source_protocol = "TCP"
#       source_port_range = "*"
#       destination_address_prefix = "*"
#       source_address_prefix = "*"
#       destination_address_prefix = "*"
#       source_protocol = "UDP"
#       source_port_range = "*"
#       destination_address_prefix = "*"
#       source_address = "*"
#       source_protocol = "HTTP"
#       source_port_range = "80"
#       destination_address_prefix = "*"
#       source_protocol = "HTTPS"
#       source_port_range = "443"
#       destination_address_prefix = "*"
#       source_protocol = "TLS"
#       source_port_range = "4194"
#       source_protocol = "TLSv1"
#       source_port_range = "6443"
#       source_protocol = "Tcp"
#    
}

