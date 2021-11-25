resource "azurerm_data_factory" "example" {
  name                = local.data_factory_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}