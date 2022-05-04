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

# create dns policy
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy"
  description = "Terraform example DNS policy"
  dns_policy_config {
    type = "A"
    ttl  = 300
    rrdatas = [
      "1 ASPMX.L.GOOGLE.COM.",
      "2 ASPMX.L.GOOGLE.COM.",
      "3 ASPMX.L.GOOGLE.COM.",
      "4 ASPMX.L.GOOGLE.COM.",
      "5 ASPMX.L.GOOGLE.COM.",
      "6 ASPMX.L.GOOGLE.COM.",
      "7 ASPMX.L.GOOGLE.COM.",
      "8 ASPMX.L.GOOGLE.COM.",
      "9 ASPMX.L.GOOGLE.COM.",
      "10 ASPMX.L.GOOGLE.COM.",
      "11 ASPMX.L.GOOGLE.COM.",
      "12 ASPMX.L.GOOGLE.COM.",
      "13 ASPMX.L.GOOGLE.COM.",
      "14 ASPMX.L.GOOGLE.COM.",
      "15 ASPMX.L.GOOGLE.COM.",
      "16 ASPMX.L.GOOGLE.COM.",
      "17 ASPMX.L.GOOGLE.COM.",
      "18 ASPMX.L.GOOGLE.COM.",
      "19 ASPMX.L.GOOGLE.COM.",
      "20 ASPMX.L.GOOGLE.COM.",
      "21 ASPMX.L.GOOGLE.COM.",
      "22 ASPMX.L.GOOGLE.COM.",
      "23 ASPMX.L.GOOGLE.COM.",
      "24 ASPMX.L.GOOGLE.COM.",
      "25 ASPMX.L.GOOGLE.COM.",
      "26 ASPMX.L.GOOGLE.COM.",
      "27 ASPMX.L.GOOGLE.COM.",
      "28 ASPMX.L.GOOGLE.COM.",
      "29 ASPMX.L.GOOGLE.COM.",
      "30 ASPMX.L.GOOGLE.COM.",
      "31 ASPMX.L.GOOGLE.COM.",
      "32 ASPMX.L.GOOGLE.COM.",
      "33 ASPMX.L.GOOGLE.COM.",
      "34 ASPMX.L.GOOGLE.COM.",
      "35 ASPMX.L.GOOGLE.COM.",
      "36 ASPMX.L.GOOGLE.COM.",
      "37 ASPMX.L.GOOGLE.COM.",
      "38 ASPMX.L.GOOGLE.COM.",
      "39 ASPMX.L.GOOGLE.COM.",
      "40 ASPMX.L.GOOGLE.COM.",
      "41 ASPMX.L.GOOGLE.COM.",
      "42 ASPMX.L.GOOGLE.COM.",
      "43 ASPMX.L.GOOGLE.COM.",
      "44 ASPMX.L.GOOGLE.COM.",
      "45 ASPMX.L.GOOGLE.COM.",
      "46 ASPMX.L.GOOGLE.COM.",
      "47 ASPMX.L.GOOGLE.COM.",
      "48 ASPMX.L.GOOGLE.COM.",
      "49 ASPMX.L.GOOGLE.COM.",
      "50 ASPMX.L.GOOGLE.COM.",
      "51 ASPMX.L.GOOGLE.COM.",
      "52 ASPMX.L.GOOGLE.COM.",
      "53 ASPMX.L.GOOGLE.COM.",
      "54 ASPMX.L.GOOGLE.COM.",
      "55 ASPMX.L.GOOGLE.COM.",
      "56 ASPMX.L.GOOGLE.COM.",
      "57 ASPMX.L.GOOGLE.COM.",
}

