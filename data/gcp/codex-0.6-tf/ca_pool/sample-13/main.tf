terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_ssl_certificate" "name_0" {
  name = "cert"
  certificate = "${file("cert.pem")}"
  private_key = "${file("key.pem")}"
}

