resource "azuread_application" "example" {
  display_name = local.root_service_principal_name
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "example" {
  application_id               = azuread_application.example.application_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  feature_tags {
    enterprise = true
    gallery    = true
  }
}

resource "azuread_service_principal_password" "example" {
  service_principal_id = azuread_service_principal.example.object_id
}

resource "azurerm_role_assignment" "example" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.example.object_id
}


resource "local_file" "foo" {
  filename = "${path.module}/${local.secret_file_path}"
  content  = <<EOT
ARM_CLIENT_ID=${azuread_service_principal.example.application_id}
ARM_CLIENT_SECRET=${azuread_service_principal_password.example.value}
ARM_TENANT_ID=${azuread_service_principal.example.application_tenant_id}
EOT  
}
