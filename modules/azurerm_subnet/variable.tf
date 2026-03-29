variable "subnets" {
  description = "Subnet Details"
  type = map(object({
    snet_name        = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
