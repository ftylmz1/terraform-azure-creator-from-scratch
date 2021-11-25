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
#  THAT CAUSES 403 ERROR
#   storage_use_azuread        = true
#   skip_provider_registration = true
}

provider "databricks" {
  host = azurerm_databricks_workspace.example.workspace_url
  # azure_subscription_id = ""
  # azure_client_secret   = ""
  # azure_client_id       = ""
  # azure_tenant_id       = ""
}