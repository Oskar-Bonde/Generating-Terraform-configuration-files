terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-9 image"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# the following for the following of the google in the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
# the following is not provided by the following.
#
}
