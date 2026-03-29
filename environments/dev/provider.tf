terraform {
  backend "azurerm" {
    resource_group_name = "rahul_rg"
    storage_account_name = "rahulstg12"
    container_name = "hello"
    key = "sunilterraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ed4d371f-397a-4027-b7a5-393e2f96c66e"
}
