module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}
module "Virtual_Network" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_vnets"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.Virtual_Network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}
module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_public_ip"
  pips       = var.pips
}
module "virtual_machine" {
  depends_on = [module.resource_group, module.Virtual_Network, module.subnet, module.public_ip]
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vms
}
