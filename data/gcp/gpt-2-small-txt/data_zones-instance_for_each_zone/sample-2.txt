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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
# region = "europe-west4"
# zone = "europe-west4-a"
# project = "terraform-338909"
# zone = "europe-west4-b"
# project = "terraform-338909"
# zone = "europe-west4-c"
# project = "terraform-338909"
# zone = "europe-west4-d"
# project = "terraform-338909"
# zone = "europe-west4-e"
# project = "terraform-338909"
# zone = "europe-west4-f"
# project = "terraform-338909"
# zone = "europe-west4-g"
# project = "terraform-338909"
# zone = "europe-west4-h"
# project = "terraform-338909"
# zone = "europe-west4-i"
# project = "terraform-338909"
# zone = "europe-west4-j"
# project = "terraform-338909"
# zone = "europe-west4-k"
# project = "terraform-338909"
# zone = "europe-west4-l"
# project = "terraform-338909"
# zone = "europe-west4-m"
# project = "terraform-338909"
# zone = "europe-west4-n"
# project = "terraform-338909"
# zone = "europe-west4-o"
# project = "terraform-338909"
# zone = "europe-west4-p"
# project = "terraform-338909"
# zone = "europe-west4-q"
# project = "terraform-338909"
# zone = "europe-west4-r"
# project = "terraform-338909"
# zone = "europe-west4-s"
# project = "terraform-338909"
# zone = "europe-west4-t"
# project = "terraform-338909"
# zone = "europe-west4-u"
# project = "terraform-338909"
# zone = "europe-west4-v"
# project = "terraform-338909"
# zone = "europe-west4-w"
# project = "terraform-338909"
# zone = "europe-west4-x"
# project = "terraform-338909"
# zone = "europe-west4-y"
# project = "terraform-338909"
# zone = "europe-west4-z"
# project = "terraform-338909"
# zone = "europe-west4-a"
# project = "terraform-338909
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name
}

