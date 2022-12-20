resource "azurerm_virtual_network" "vnet" {
  address_space       = var.address_space
  location            = var.vnet_location
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_subnet" "snet_count" {
  count = var.use_for_each ? 0 : length(var.subnet_name)

  address_prefixes     = [var.subnet_prefix[count.index]]
  name                 = var.subnet_name[count.index]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}
resource "azurerm_subnet" "subnet_for_each" {
  for_each = var.use_for_each ? toset(var.subnet_names) : []

  address_prefixes     = [local.snet_name_prefixes[each.value]]
  name                 = each.value
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}