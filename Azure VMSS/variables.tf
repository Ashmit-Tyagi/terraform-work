variable "resource_group_name" {
  type    = string
  default = "rg-vmss-demo"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "vmss_name" {
  type    = string
  default = "vmss-demo"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "instance_count" {
  type    = number
  default = 2
}
