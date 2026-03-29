variable "rgs" {
  description = "Resource Group Details"
  type = map(object({
    rg_name  = string
    location = string
    tags     = optional(map(string))
  }))
}
variable "vnets" {
  description = " Details Of Virtual Network"
  type = map(object({
    vnet_name     = string
    rg_name       = string
    location      = string
    address_space = list(string)
  }))
}
variable "subnets" {
  description = "Subnet Details"
  type = map(object({
    snet_name        = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
variable "pips" {
  description = "Public IP Details"
  type = map(object({
    pip_name          = string
    location          = string
    rg_name           = string
    allocation_method = string
  }))
}
variable "vms" {
  description = "Virtual Machine Details"
  type = map(object({
    nic_name    = string
    location    = string
    rg_name     = string
    vm-name     = string
    vm-username = string
    vm-password = string
    vm-size     = string
    snet_name   = string
    vnet_name   = string
    pip_name    = string
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}