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

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy"
  zone = "europe-west1-b"

  # DNS zone where to create the record
  rrdatas = [
    "1 ASPMX.L.GOOGLE.COM.",
    "5 ALT1.ASPMX.L.GOOGLE.COM.",
    "5 ALT2.ASPMX.L.GOOGLE.COM.",
    "10 ALT3.ASPMX.L.GOOGLE.COM.",
    "10 ALT4.ASPMX.L.GOOGLE.COM.",
    "10 ALT5.ASPMX.L.GOOGLE.COM.",
    "10 ALT6.ASPMX.L.GOOGLE.COM.",
    "10 ALT7.ASPMX.L.GOOGLE.COM.",
    "10 ALT8.ASPMX.L.GOOGLE.COM.",
    "10 ALT9.ASPMX.L.GOOGLE.COM.",
    "10 ALT10.ASPMX.L.GOOGLE.COM.",
    "10 ALT11.ASPMX.L.GOOGLE.COM.",
    "10 ALT12.ASPMX.L.GOOGLE.COM.",
    "10 ALT13.ASPMX.L.GOOGLE.COM.",
    "10 ALT14.ASPMX.L.GOOGLE.COM.",
    "10 ALT15.ASPMX.L.GOOGLE.COM.",
    "10 ALT16.ASPMX.L.GOOGLE.COM.",
    "10 ALT17.ASPMX.L.GOOGLE.COM.",
    "10 ALT18.ASPMX.L.GOOGLE.COM.",
    "10 ALT19.ASPMX.L.GOOGLE.COM.",
    "10 ALT20.ASPMX.L.GOOGLE.COM.",
    "10 ALT21.ASPMX.L.GOOGLE.COM.",
    "10 ALT22.ASPMX.L.GOOGLE.COM.",
    "10 ALT23.ASPMX.L.GOOGLE.COM.",
    "10 ALT24.ASPMX.L.GOOGLE.COM.",
    "10 ALT25.ASPMX.L.GOOGLE.COM.",
    "10 ALT26.ASPMX.L.GOOGLE.COM.",
    "10 ALT27.ASPMX.L.GOOGLE.COM.",
    "10 ALT28.ASPMX.L.GOOGLE.COM.",
    "10 ALT29.ASPMX.L.GOOGLE.COM.",
    "10 ALT3.ASPMX.L.GOOGLE.COM.",
    "10 ALT30.ASPMX.L.GOOGLE.COM.",
    "10 ALT31.ASPMX.L.GOOGLE.COM.",
    "10 ALT32.ASPMX.L.GOOGLE.COM.",
    "10 ALT33.ASPMX.L.GOOGLE.COM.",
    "10 ALT34.ASPMX.L.GOOGLE.COM.",
    "10 ALT35.ASPMX.L.GOOGLE.COM.",
    "10 ALT36.ASPMX.L.GOOGLE.COM.",
    "10 ALT37.ASPMX.L.GOOGLE.COM.",
    "10 ALT38.ASPMX.L.GOOGLE.COM.",
    "10 ALT39.ASPMX.L.GOOGLE.COM.",
    "10 ALT40.ASPMX.L.GOOGLE.COM.",
    "10 ALT41.ASPMX.L.GOOGLE.COM.",
}

