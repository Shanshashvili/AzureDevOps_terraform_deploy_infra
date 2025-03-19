terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.42.0"
    }
  }
  required_version = ">= 1.3.8"

  backend "azurerm" {
    resource_group_name  = "rg-example-tfstate"
    storage_account_name = "exampletfstatestorag"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
