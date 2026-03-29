variable "rgs" {
  description = "Resource Group Details"
  type = map(object({
    rg_name  = string
    location = string
    tags     = optional(map(string))
  }))
}
