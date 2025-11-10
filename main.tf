terraform {
required_providers {
azurerm= {
source= "hashicorp/azurerm"
version= "~>3.0"
}
}
provider "azurerm"{
features{}
}

resource "azm-resource-group" "rg"{
name= var.resource_group_name
location= var.location
}
resource "azm-vnet" "aznet"{
name=var.azm_vnet_name
resource_group=var.azm-resource-group.rg.name
resource_group_location= var.azm-resource-group.location
address_space= var.address_space
}
resource "azm-subnet" "azsub"{
name=var.az_subnet_name
resource_group=var.azm-resource-group.rg.name
az_vnet=var.azm-vnet.aznet.name
address_prefix=var.subnet_prefix
}
}


