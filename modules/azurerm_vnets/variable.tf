variable "vnets" {
  description = " Details Of Virtual Network"
  type = map(object({
    vnet_name     = string
    rg_name       = string
    location      = string
    address_space = list(string)
  }))
}
