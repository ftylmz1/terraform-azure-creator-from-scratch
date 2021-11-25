resource "azurerm_storage_account" "example" {
  name                     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # account_kind              = "Storage"
  # enable_https_traffic_only = "true"
}


# TODO CONTAINERS COULD BE MANAGED BY OTHER MODULES
resource "azurerm_storage_container" "example" {
  name                  = local.storage_account_container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
