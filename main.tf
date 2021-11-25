terraform {
  required_version = ">= 1.0"
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = ">= 0.3.5"
    }
    azurerm = {
      version = ">= 2.1.0"
    }
  }
  #   backend "azurerm" {
  #   }
}


provider "azurerm" {
  features {}
  # storage_use_azuread        = true
  # skip_provider_registration = true
}

provider "databricks" {
  azure_subscription_id = ""
  azure_client_secret   = ""
  azure_client_id       = ""
  azure_tenant_id       = ""
}


module "azure_infra" {
  source = "./azure_infra"
}

