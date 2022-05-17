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
  provider_settings {
    ca_certificate_body = "${file("ca.crl")}"
  }

  ca_key_algorithm                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
}

