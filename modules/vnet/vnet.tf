resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetwork_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.vnet_address_space

  tags = merge(var.tags)

  encryption {
    enforcement = "AllowUnencrypted"
  }
}