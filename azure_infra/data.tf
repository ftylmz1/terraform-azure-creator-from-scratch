data "azurerm_subscription" "primary" {}

data "azuread_client_config" "current" {}

# data "azuread_service_principal" "example" {
#   display_name = "fuatexample2"
# }

data "databricks_node_type" "smallest" {
  local_disk = true
  depends_on = [
    azurerm_databricks_workspace.example
  ]
}

data "databricks_spark_version" "latest_lts" {
  long_term_support = true
  depends_on = [
    azurerm_databricks_workspace.example
  ]
}