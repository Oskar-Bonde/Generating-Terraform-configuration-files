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
  # Set the billing account to be the same as the project's billing account
  billing_account = "1234-ABCD-1234"
  # Set the provider version to be 3
  provider_version = "3.0.0"
  # Set the zone to be instanced in the GKE cluster
  zone = "europe-west4-a"
  # Set the network_ip_cidr_range to be "10.0.0.0/16"
  network_ip_cidr_range = "10.0.0.0/16"
  # Set the primary network region to be the same as the project's primary network region
  primary_network_region = "europe-west4"
  # Set the secondary network region to be the same as the project's secondary network region
  secondary_network_region = "europe-west4"
  # Set the network_tags to be a map of tags to add to the instance
  network_tags = {
    "foo" = "bar"
  }
  # Set the boot disk type to pd-standard
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-ssd
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-standard
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-ssd
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-standard
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-ssd
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-standard
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-ssd
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-standard
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-ssd
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type to pd-ssd
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  # Set the boot disk type
}

