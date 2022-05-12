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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-2-%%{random_suffix}"
  machine_type = "europe-west4"
  zone = "europe-west4-a"
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the network admin password
  network_security_group_ids = [
    "sg-96274af3",
  ]
  # Set the network data share to true
  network_subnet_name = "my-subnet-name"
  # Set the image to use
  image = "debian-cloud/debian-9"
  # Set the instance tags
  tags = ["foo", "bar"]

  # Set the instance metadata
  metadata_startup_script = "echo hi > /test.txt"

  # Set the instance tags
  tags = ["foo", "bar"]

  # Set the instance startup script
  startup_script = "echo hi > /test.txt"

  # Set the instance tags
  tags = ["foo", "bar"]

  # Set the instance startup script
  startup_script_ps1 = "echo hi > /test.txt"

  # Set the instance tags
  tags = ["foo", "bar"]

  # Set the instance startup script
  startup_script_ps2 = "echo hi > /test.txt"

  # Set the instance tags
  tags = ["foo", "bar"]

  # Set the instance startup script
  startup_script_ps3 = "echo hi > /test.txt"

  # Set the instance tags
  tags = ["foo", "bar"]

  # Set the instance startup script
  startup_script_ps4 = "echo hi > /test.txt"

  # Set the instance tags
  tags = ["foo", "bar"]
}

