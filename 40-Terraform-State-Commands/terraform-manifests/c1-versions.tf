# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
  } 
# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "amit-rg"
    storage_account_name  = "tfamitstate05"
    container_name        = "tfstatefiles"
    key                   = "state-commands-demo1.tfstate"
  }   
}

# Provider Block
provider "azurerm" {
 features {}          
}



