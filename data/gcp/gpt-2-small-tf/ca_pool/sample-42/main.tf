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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true.
resource "google_ca_certificate" "name_0" {
  provider = google-beta
  name    = "my-ca-cert"
  type    = "CNAME"
  certificate = file("${path.module}/ca-cert.pem")
  private_key = file("${path.module}/ca-cert.pem")

  subject {
    common_name = "my-ca-cert"
  }

  dns_nameservers = [
    "192.168.1.1",
    "192.168.2.1",
    "192.168.3.1",
    "192.168.4.1",
    "192.168.5.1",
    "192.168.6.1",
    "192.168.7.1",
    "192.168.8.1",
    "192.168.9.1",
    "192.168.10.1",
    "192.168.11.1",
    "192.168.12.1",
    "192.168.13.1",
    "192.168.14.1",
    "192.168.15.1",
    "192.168.16.1",
    "192.168.17.1",
    "192.168.18.1",
    "192.168.19.1",
    "192.168.20.1",
    "192.168.21.1",
    "192.168.22.1",
    "192.168.23.1",
    "192.168.24.1",
    "192.168.25.1",
    "192.168.26.1",
    "192.168.27.1",
    "192.168.28.1",
    "192.168.29.1",
    "192.168.30.1",
    "192.168.31.1",
    "192.168.32.1",
    "192.168.33.1",
    "192.168.34.1",
    "192.168.35.1",
    "192.168.36.1",
    "192.168.37.1",
    "192.168.38.1",
    "192.168.39.1",
    "192.168.40.1",
    "192.168.41.1",
    "192.168.42.1",
    "192.168.43.1",
    "192.168.44.1",
    "192.168.45.1",
    "192.168
}

