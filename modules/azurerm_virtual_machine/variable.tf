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
