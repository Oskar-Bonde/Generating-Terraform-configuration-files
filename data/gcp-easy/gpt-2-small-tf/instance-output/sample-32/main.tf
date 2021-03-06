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
#    value = "${google_compute_instance.name_0.name}"
# }

# output blockvariable "instance_network" {
#    type = "string"
#    description = "Network of the instance"
#    value = "${google_compute_instance.name_0.network_interface.0.access_config.0.nat_ip}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "Subnetwork of the instance"
#    value = "${google_compute_subnetwork.subnet.0.name}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "Instance tags"
#    value = "${join(",", google_compute_instance.name_0.*.name)}"
# }

# output blockvariable "instance_network" {
#    type = "string"
#    description = "Network of the instance"
#    value = "${google_compute_subnetwork.subnet.0.network_interface.0.access_config.0.nat_ip}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "Instance tags"
#    value = "${join(",", google_compute_instance.name_0.*.name)}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "Subnetwork of the instance"
#    value = "${google_compute_subnetwork.subnet.0.network_interface.0.access_config.0.nat_ip}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "Instance tags"
#    value = "${join(",", google_compute_instance.name_0.*.name)}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "Subnetwork of the instance"
#    value = "${google_compute_subnetwork.subnet.0.network_interface.0.access_config.0
}

