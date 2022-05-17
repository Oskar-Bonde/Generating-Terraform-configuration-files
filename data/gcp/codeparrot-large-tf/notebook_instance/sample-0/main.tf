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

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu-2016
resource "google_compute_instance" "name_0" {
  name = "my-notebook"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["e2-medium", "e2-micro"]
  can_ip_forward = true
  can_ip_protocol = "UDP"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_create = true
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_update = true
  can_ip_address_delegation = true
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_private = true
  can_ip_address_name = true
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_scopes = ["cloud-platform"]
  can_ip_address = true
  can_ip_address_dns_a = "foo"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_aaaa = "foo"
  can_ip_address_dns_cname = "bar"
  can_ip_address_name_servers = ["a", "b", "c"]
  can_ip_address_names = ["e2-medium", "e2-micro"]
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_prefix = "e2-micro"
  can_ip_address_private_access = true
  can_ip_address_private_list = ["a", "b", "c"]
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_a_record = "a"
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_aaaa_record = "a"
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_cname_record = "a"
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_name_servers_and_subdomain = ["a", "b", "c"]
  can_ip_address_names_servers_and_subdomain = ["e2-medium", "e2-micro"]
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_a_record_list = ["a", "b", "c"]
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_aaaa_record_list = ["a", "b", "c"]
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_cname_record_list = ["a", "b", "c"]
  description = "description"
  tags = ["e2-medium", "e2-micro"]
  can_ip_address_dns_a_record_list_count = 1
  description = "description"
  tags = ["e
}

