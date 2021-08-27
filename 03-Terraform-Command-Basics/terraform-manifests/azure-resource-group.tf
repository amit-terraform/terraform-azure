# Terraform settings block
terraform {
  required_version = ">1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# create resource group

resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"
}