terraform {
required_providers {
azurerm= {
source= "hashicorp/azurerm"
version= "~>3.0"
}
}
}
provider "azurerm"{
features{}
}

resource "azurerm_resource_group" "rg"{
name= var.resource_group_name
resource_group_location= var.location
}
resource "azurerm_virtual_network" "vnet"{
name=var.azm_vnet_name
resource_group_name = var.azurerm_resource_group.rg.name
resource_group_location = var.azurerm_resource_group.rg.location
address_space= var.address_space
}
resource "azurerm_subnets" "azsub"{
name=var.az_subnet_name
resource_group_name=var.azm-resource-group.rg.name
virtual_network_name=var.azurerm_virtual_network.vnet.name
address_prefixes =var.subnet_prefixes
}
}


