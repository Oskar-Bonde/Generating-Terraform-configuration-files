terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "westus"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "example"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "West US"
  kubernetes_version = "1.14.5-LTS"
  enable_auto_scaling = true

  # Uncomment this line to delete the default node pool
  remove_default_node_pool = true

  # Uncomment this line to delete the default vm size
  remove_default_vm_size = true

  # Uncomment this line to delete the default image
  remove_default_image = true

  # Uncomment this line to delete the default security group
  remove_default_security_group = true

  # Uncomment this line to delete the default image
  remove_default_image_version = true

  # Uncomment this line to delete the default security group
  remove_default_security_group_policy = true

  # Uncomment this line to delete the default image version
  remove_default_image_version_constraint = true

  # Uncomment this line to delete the default image version constraint
  remove_default_image_version_constraint_policy = true

  # Uncomment this line to delete the default image version constraint
  remove_default_image_version_constraint_policy_type = true

  # Uncomment this line to delete the default image version constraint
  remove_default_image_version_constraint_policy_type_constraint = true

  # Uncomment this line to delete the default image version constraint
  remove_default_image_version_constraint_policy_type_constraint_type = true

  # Uncomment this line to delete the default image version constraint
  remove_default_image_version_constraint_policy_type_constraint_type_list = [
    "Custom_Image_Version",
    "Custom_Image_Version_No_Snapshot",
    "Custom_Image_Version_No_Snapshot_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image_Version_No_Snapshot_No_User_Defined_No_Tag",
    "Custom_Image
}

