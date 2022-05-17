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

# create google notebooks enviromentvariable
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-enviroment"
  enviroment_config {
    enviroment_config {
      enviroment_config {
         PROJECT_ID = var.project_id
       }
       PROJECT_ID = var.project_id
       LOCATION = var.region
       LOCATION_SPEC = var.location
       MYSERVER = "aws"
       MYSERVER_ACCOUNT = var.mysql_user_account
       MYSERVER_PASSWORD = var.mysql_password
       MYSERVER_PORT = "80"
       MYSERVER_PORT_SEC = "80"
       MYSERVER_PORT_EXPORT = "http"
       MYSERVER_PORT_EXPORT_SEC = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC_PORT_SEC_PORT = "http"
       MYSERVER_PORT_EXPORT_SEC_PORT_SEC
}

