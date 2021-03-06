
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# google provider block
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-disk-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a node template

resource "google_compute_forwarding_rule" "name_2" {
  name = "my-compute-forwarding-rule-%%{random_suffix}"
  target = google_compute_target_http_proxy.default.self_link

  ip_protocol = "TCP"
  load_balancing_scheme = "INTERNAL"
  port_range = "80"
  ip_address = "default"
  subnetwork = google_compute_subnetwork.default.self_link

  ip_protocol = "TCP"
  load_balancing_scheme = "INTERNAL"
  port_range = "443"
  ip_address = "default"
  subnetwork = google_compute_subnetwork.default.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags = ["my-compute-forwarding-rule"]
}

