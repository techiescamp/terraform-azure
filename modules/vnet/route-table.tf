# Create a Route Table
resource "azurerm_route_table" "public" {
  name                = var.route_table_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# Define Route for Internet Access
resource "azurerm_route" "internet_access" {
  name                = var.route_name
  resource_group_name = var.resource_group_name
  route_table_name    = azurerm_route_table.public.name
  address_prefix      = "0.0.0.0/0"
  next_hop_type       = "Internet"
}

# Associate Route Table with Public Subnets
resource "azurerm_subnet_route_table_association" "public_association" {
  for_each = {
    for name, subnet in azurerm_subnet.subnet : name => subnet
    if name == var.subnet_names[0] || name == var.subnet_names[2] # Only public subnets
  }
  subnet_id      = each.value.id
  route_table_id = azurerm_route_table.public.id
}

