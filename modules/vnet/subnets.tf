resource "azurerm_subnet" "subnet" {
  for_each                        = toset(var.subnet_names)
  name                            = each.key
  resource_group_name             = var.resource_group_name
  virtual_network_name            = var.vnetwork_name
  address_prefixes                = [element(var.subnet_prefix, index(var.subnet_names, each.key))]
  default_outbound_access_enabled = true

  depends_on = [azurerm_virtual_network.vnet]
}
