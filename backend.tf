terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.42.0"
    }
  }
  required_version = ">= 1.3.8"

  backend "azurerm" {
    resource_group_name  = "rg-adolearn-epam-cloud-and-devops-practice-tfstate"
    storage_account_name = "adolearntfstatestorag"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}