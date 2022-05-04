terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2resource.
# Use the following command to create the composer environment:
# gcloud composer environments create --project=my-project --zone=us-central1-f

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.
# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-central1-f --var=composer-2.0.0-preview.3-airflow-2.1.2resource.

# terraform apply -var project=my-project --zone=us-
}

