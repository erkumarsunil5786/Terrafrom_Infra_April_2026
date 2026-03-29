rgs = {
  rg1 = {
    rg_name  = "dev-todoapp"
    location = "canada central"
    tags = {
      env = "dev"
      app = "todo"
    }
  }
}
vnets = {
  vnet1 = {
    vnet_name     = "dev-todoapp-vnet"
    location      = "canada central"
    rg_name       = "dev-todoapp"
    address_space = ["10.0.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    snet_name        = "frontend-dev-todoapp"
    rg_name          = "dev-todoapp"
    address_prefixes = ["10.0.1.0/24"]
    vnet_name        = "dev-todoapp-vnet"
  }
  subnet2 = {
    snet_name        = "backend-dev-todoapp"
    rg_name          = "dev-todoapp"
    address_prefixes = ["10.0.2.0/24"]
    vnet_name        = "dev-todoapp-vnet"
  }
}
pips = {
  pip1 = {
    pip_name          = "frontend-vm-pip"
    location          = "canada central"
    rg_name           = "dev-todoapp"
    allocation_method = "Static"
  }
}
vms = {
  vm1 = {
    nic_name    = "dev-todoapp-frontend-nic"
    location    = "canada central"
    rg_name     = "dev-todoapp"
    vm-name     = "dev-todoapp-frontendvm"
    vm-username = "sunil5786"
    vm-password = "Asdf@202690"
    vm-size     = "Standard_D2s_v3"
    snet_name   = "frontend-dev-todoapp"
    vnet_name   = "dev-todoapp-vnet"
    pip_name    = "frontend-vm-pip"

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
