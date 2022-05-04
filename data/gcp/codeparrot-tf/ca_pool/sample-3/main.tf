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
  machine_type = "f1-micro"
  zone = "europe-west1-b"
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
  # Set the custom_data_disk_type to pd-ssd for data disk
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
    type         = "pd-standard"
    disk_size_gb = 50
  }
  # Set the custom_data_disk_type to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    // TODO: Set the disk_size_gb
    type = "pd-ssd"
    disk_size_gb = 50
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the custom_data_disk_type to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    type = "pd-ssd"
    disk_size_gb = 50
  }
  # Set the boot disk to pd-standard
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    type = "pd-standard"
    disk_size_gb = 50
  }
  # Set the network_interface to pd-standard
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the custom_data_disk_type to pd-ssd for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    type = "pd-ssd"
    disk_size_gb = 50
  }
  # Set the boot disk to pd-standard
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    type = "pd-standard"
    disk_size_gb = 50
  }
  # Set the network_interface to pd-standard
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the custom_data_disk_type to pd-ssd for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    type = "pd-ssd"
    disk_size_gb = 50
  }
  # Set the boot disk to pd-standard
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
    type = "pd-standard"
    disk_size_gb = 50
  }
  # Set the service_account_email to a gcloud service account email
  service_account {
    email  = "${google_service_account.default.email}"
    scopes = ["cloud-platform"]
  }
  # Set the default network interface to pd-standard
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the boot disk to pd-standard
  disk {
    // Ephemeral IP
    // TODO: Set the disk_type
   
}
