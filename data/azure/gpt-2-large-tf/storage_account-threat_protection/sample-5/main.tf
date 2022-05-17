terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "rg_policy" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# create resource group and name it atp example. Set location to west europe
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
}
