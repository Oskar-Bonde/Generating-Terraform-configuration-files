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
#    type = "string"
#    description = "Name of the instance"
#    value = "${var.instance_name}"
# }

# output blockvariable "instance_ip" {
#    type = "string"
#    description = "IP address of the instance"
#    value = "${google_compute_address.instance_ip.address}"
# }

# output blockvariable "instance_network" {
#    type = "string"
#    description = "Network of the instance"
#    value = "${google_compute_network.instance_network.self_link}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "Subnetwork of the instance"
#    value = "${google_compute_subnetwork.instance_subnetwork.self_link}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output blockvariable "instance_network" {
#    type = "string"
#    description = "Network of the instance"
#    value = "${google_compute_network.instance_network.self_link}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "Subnetwork of the instance"
#    value = "${google_compute_subnetwork.instance_subnetwork.self_link}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "Subnetwork of the instance"
#    value = "${google_compute_subnetwork.instance_subnetwork.self_link}"
# }

# output blockvariable "instance_subnetwork_ip" {
#    type = "string"
}

