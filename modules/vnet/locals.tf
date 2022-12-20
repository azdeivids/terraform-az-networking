locals {
  snet_name_prefixes = zipmap(var.subnet_name, var.subnet_prefix)
}