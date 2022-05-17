terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance1-%%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# bigquery dataset resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
# resource. Use dataset id example_dataset,
}

