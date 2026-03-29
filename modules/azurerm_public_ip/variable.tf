variable "pips" {
  description = "Public IP Details"
  type = map(object({
    pip_name          = string
    location          = string
    rg_name           = string
    allocation_method = string
  }))
}
