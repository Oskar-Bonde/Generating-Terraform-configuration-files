terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0.0.0/16
resource "google_compute_instance" "name_0" {
  name = "my-vm-instance-disk"
  machine_type = "f1-micro"

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

  metadata_startup_script = <<EOF
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is a data source to be used by the instance.
# This is
}

# create compute network, give it a name and set auto create subnetworks to false
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42
}

