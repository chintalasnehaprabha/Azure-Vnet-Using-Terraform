varibale "resource_group_name"{
  description= "resource_group_name"
  type=string
}
varibale "location"{
  description= " region"
  type=string
  default="East-1a"
}
varibale "az_vnet_name" {
  description ="vnet"
  type= string
}
varibale "address_space" {
  description ="address_space"
  type = list(string)
}
variable "az_subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)
}
