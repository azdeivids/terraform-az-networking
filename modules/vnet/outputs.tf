output "vnet_address_space" {
  description = "Address space for the new vnet"
  value       = azurerm_virtual_network.vnet.address_space
}
output "vnet_id" {
  description = "Id for the new vnet"
  value       = azurerm_virtual_network.vnet.id
}
output "vnet_subnets" {
  description = "Id's of the subnets created within the new vnet"
  value       = local.azurerm_subnets[*].id
}