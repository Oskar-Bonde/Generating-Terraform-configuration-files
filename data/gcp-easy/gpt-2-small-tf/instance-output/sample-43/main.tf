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

# output blockvariable "instance_network" {
#    type = "string"
#    description = "The VPC network to create the instance in"
#    value = "${google_compute_network.default.self_link}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "The subnetwork to create the instance in"
#    value = "${google_compute_subnetwork.default.self_link}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "A map of instance tags to assign to the resource"
#    value = {
      "foo" = "bar"
    }
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "The subnetwork to create the instance in"
#    value = "${google_compute_subnetwork.default.self_link}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "A map of instance tags to assign to the resource"
#    value = {
      "foo" = "bar"
    }
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "The subnetwork to create the instance in"
#    value = "${google_compute_subnetwork.default.self_link}"
# }

# output blockvariable "instance_tags" {
#    type = "map"
#    description = "A map of instance tags to assign to the resource"
#    value = {
      "foo" = "bar"
    }
# }

# output blockvariable "instance_subnetwork" {
#    type = "string"
#    description = "The subnetwork to create the instance in"
#    value = "${google_compute_subnetwork.default.self_link}"
# }

# output blockvariable "instance_subnetwork" {
#    type = "string
}

