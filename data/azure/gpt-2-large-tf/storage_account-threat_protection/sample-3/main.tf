resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_password"
  location = "westus2"
}

# create resource group and name it atp example. Set location to west europe
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
}

