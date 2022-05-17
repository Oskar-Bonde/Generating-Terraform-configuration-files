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
  name = "my-vm"
  machine_type = "f1-micro"
  zone = "europe-west1-b"
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  # set publishing options to true
  publishing_options {
    publish_ca_cert = true
    publish_crl = true
  }
  # set network_ip_cidr_range to "10.0.0.0/16"
  network_ip_cidr_range = "10.0.0.0/16"
  # set ip range for instance
  network_ip_allocation_policy {
    use_ip_aliases = true
    name = "my-ip-range"
  }
  # create a subnet and a route table for a public IP address
  subnet {
    name = "my-subnet"
    network_tier = "STANDARD"
    # create subnet route table
    route_table_id = "${google_compute_route_table.my_route_table.id}"
  }
  route_table_association {
    subnet_id = "${google_compute_subnetwork.my_subnet.id}"
    route_table_id = "${google_compute_route_table.my_route_table.id}"
  }
  # create a subnet route table and a route table association for a public IP address
  subnet {
    name = "my-subnet-2"
    network_tier = "STANDARD"
    # create subnet route table
    route_table_id = "${google_compute_route_table.my_route_table.id}"
  }
  route_table_association {
    subnet_id = "${google_compute_subnetwork.my_subnet_2.id}"
    route_table_id = "${google_compute_route_table.my_route_table_2.id}"
  }
  # create a subnet route table association for a public IP address
  subnet {
    name = "my-subnet-3"
    network_tier = "STANDARD"
    # create subnet route table
    route_table_id = "${google_compute_route_table.my_route_table_3.id}"
  }
  route_table_association {
    subnet_id = "${google_compute_subnetwork.my_subnet_3.id}"
    route_table_id = "${google_compute_route_table.my_route_table_3.id}"
  }
  # create a subnet route table association for a public IP address
  subnet {
    name = "my-subnet-4"
    network_tier = "STANDARD"
    # create subnet route table
    route_table_id = "${google_compute_route_table.my_route_table_4.id}"
  }
  route_table_association {
    subnet_id = "${google_compute_subnetwork.my_subnet_4.id}"
    route_table_id = "${google_compute_route_table.my_route_table_4.id}"
  }
  # create a subnet route table association for a public IP address
  subnet {
    name = "my-subnet-5"
    network_tier = "STANDARD"
    # create subnet route table
    route_table_id = "${google_compute_route_table.my_route_table_5.id}"
  }
 
}

