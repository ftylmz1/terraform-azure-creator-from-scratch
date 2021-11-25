locals {
  root_service_principal_name = "SP-${var.env_appendix}"
  secret_file_path            = "secrets/super_secrets.env"

  resource_group_name     = "RG-${var.env_appendix}"
  resource_group_location = "West Europe"

  storage_account_name = "strg${lower(var.env_appendix)}terraformstate"
  storage_account_container_name = "terraformstate"

  data_factory_name = "DF-${var.env_appendix}"
}