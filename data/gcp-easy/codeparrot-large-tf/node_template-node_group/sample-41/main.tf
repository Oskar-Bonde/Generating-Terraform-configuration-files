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

# create a node template
resource "google_compute_instance_template" "name_0" {
  name_prefix  = "node-template-"
  machine_type = "f1-micro"
  can_ip_forward = true

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-node-group-manager-%{random_suffix}"
  zone = "us-central1-a"

  tags = ["foo", "bar"]

  network_interface {
    network = "default"    
    access_config {
    }
  }

  # create the node
  node_config {
    machine_type = "f1-micro"
    tags = ["foo", "bar"]
  }

  # create the virtual machine
  vm_config {
    disk_size_gb = "50"
  }

  # create the http backend
  backend {
    group = google_compute_instance_group_manager.name_1.0.id
  }

  # create the http backend
  backend {
    group = google_compute_instance_group_manager.name_1.1.id
  }

  # create a network interface
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a URL map
  url_map = google_compute_url_map.default.id

  # enable networking
  network_interface {
    network = "default"
  }

  # enable http access
  http_access = true

  # create a
}

