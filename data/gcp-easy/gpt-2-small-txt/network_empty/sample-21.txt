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

# a google compute network resourceresource "google_compute_network" "network" {
#   name = "my-network"
#   region = "us-central1"
#   network_interface {
#     network = "default"    
#     access_config {
#     }
#   }
# }

# a google compute network resource "google_compute_subnetwork" "subnetwork" {
#   name = "my-subnetwork"
#   region = "us-central1"
#   network = "default"    
#   network_ip_allocation = "dynamic"
#   source_subnetwork_ip_ranges = [ "10.0.0.0/16" ]
#   network_security_group_ids = [ "sg-example-example-com" ]
# }

# a google compute network resource "google_compute_subnetwork_association" "subnetwork_association" {
#   name = "my-subnetwork_association"
#   region = "us-central1"
#   network = "default"    
#   network_ip_allocation = "dynamic"
#   source_subnetwork_ip_ranges = [ "10.0.1.0/24" ]
#   network_security_group_ids = [ "sg-example-example-com" ]
# }

# a google compute network resource "google_compute_subnetwork_association_association" "subnetwork_association_association" {
#   name = "my-subnetwork_association_association"
#   region = "us-central1"
#   network = "default"    
#   network_ip_allocation = "dynamic"
#   source_subnetwork_ip_ranges = [ "10.0.2.0/24" ]
#   network_security_group_ids = [ "sg-example-com" ]
# }

# a google compute network resource "google_compute_subnetwork_association_association" "subnetwork_association_association_association" {
#   name = "my-subnetwork_association_association"
#   region = "us-central1"
#   network = "default"    
#   network_ip_allocation = "dynamic"
#   source_subnetwork_ip_ranges = [ "10.0.3.0/24" ]
#   network_security_group_ids = [ "sg-example-com" ]
# }

# a google compute network resource "google_compute_subnetwork_association_association" "subnetwork_association_association_association" {
#   name = "my-subnetwork_association_association_association"
#   region = "us-central1"
#   network = "default"    
#   network_ip_allocation = "dynamic"
# 
}

