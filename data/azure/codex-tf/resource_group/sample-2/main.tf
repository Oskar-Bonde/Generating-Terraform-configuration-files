terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      features {
        # Only required for AzureRM provider version 2.0.0 and later
        # See https://github.com/terraform-providers/terraform-provider-azurerm/issues/7830
        monitoring = false
      }
    }
  }
}

# create resource group, use name myTFResourceGroup in location westus2
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

