terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "test"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"

  # kubernetes configuration
  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_certificate_authority = file("azure_certificate_authority.crt")
    kubernetes_certificate_authority_data = file("azure_certificate_authority.key")
    kubernetes_certificate_authority_version = "1.8.0"
    kubernetes_certificate_authority_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate_authority_version_name = "myTFCertificateAuthority"
    kubernetes_certificate_authority_version_type = "RSA_PKCS1_V1_5"
    kubernetes_certificate
}

