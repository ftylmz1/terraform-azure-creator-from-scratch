locals {
  root_service_principal_name = "SP-FT"
  secret_file_path            = "secrets/super_secrets.env"

  resource_group_name     = "RG-FT"
  resource_group_location = "West Europe"

  storage_account_name = "strgftterraformstate"
  storage_account_container_name = "terraformstate"

  data_factory_name = "DF-FT"
}