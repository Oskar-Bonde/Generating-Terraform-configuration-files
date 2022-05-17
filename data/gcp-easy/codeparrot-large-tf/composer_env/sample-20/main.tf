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

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name     = "env-${random_suffix}"
  region   = "us-central1"
  project  = google_project.project.project_id

  composer_env {
    image = "debian-cloud/debian-9"
  }

  depends_on = [
    google_project_service.compute_api,
    google_project_service.container_api,
    google_project_service.container_registry,
    google_project_service.compute_engine,
    google_project_service.compute_network,
    google_project_service.container_cluster,
    google_project_service.container_node_pool,
    google_project_service.container_registry_registry,
    google_project_service.container_resource_pool,
    google_project_service.container_service_account,
    google_project_service.container_storage,
    google_project_service.dataflow,
    google_project_service.dataflow_api,
    google_project_service.dataflow_controller,
    google_project_service.dlp,
    google_project_service.dlp_controller,
    google_project_service.dlp_controller_service,
    google_project_service.iam,
    google_project_service.iam_binding,
    google_project_service.iam_policy,
    google_project_service.logging,
    google_project_service.monitoring,
    google_project_service.stackdriver_api,
    google_project_service.stackdriver_container_api,
    google_project_service.stackdriver_node_pool,
    google_project_service.stackdriver_service_account,
    google_project_service.stackdriver_storage,
    google_project_service.storage,
    google_project_service.storage_api,
    google_project_service.storage_bucket,
    google_project_service.sourcerepo,
    google_project_service.sourcerepo_registry,
    google_project_service.storage_object_iam,
    google_project_service.storage_object_iam_binding,
    google_project_service.storage_object_storage,
    google_project_service.storage_bucket_object_iam,
    google_project_service.storage_bucket_object_iam_binding,
    google_project_service.storage_bucket_object_storage,
    google_project_service.pubsub,
    google_project_service.pubsub_api,
    google_project_service.pubsub_topic,
    google_project_service.pubsub_subscription,
    google_project_service.pubsub_subscription_iam,
    google_project_service.serviceusage,
    google_project_service.serviceusage_bucket,
    google_project_service.storage_notification,
    google_project_service.storage_notification_channel,
    google_project_service.storage_notification_channel_iam,
    google_project_service.storage_notification_channel_partner,
    google_project_service.storage_notification_channel_security,
    google_project_service.storage_notification_channel_security_partner,
    google_project_service.storage_notification_channel_service,
    google_project_service.storage_notification_channel_shared_vpc,
    google_project_service.storage_notification_channel_shared_vpc_partner,
    google_project_service.storage_notification_channel_service_perimeter,
    google_project_service.storage_notification_channel_service_perimeter_partner,
    google_project_service.storage_notification_channel
}

