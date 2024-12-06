output "storage_account_name" {
  value = azurerm_storage_account.tfstate_storage_account.name
}

output "storage_account_id" {
  value = azurerm_storage_account.tfstate_storage_account.id
}

output "storage_container_name" {
  value = azurerm_storage_container.tfstate_storage_container.name
}

output "storage_container_id" {
  value = azurerm_storage_container.tfstate_storage_container.id
}
