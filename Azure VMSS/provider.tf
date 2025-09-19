terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
  subscription_id = "e40c4b18-7145-4ec2-a8f7-ef0638c431be"
}
