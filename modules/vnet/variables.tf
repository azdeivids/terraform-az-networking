variable "tags" {
  description = "Tags to be associated with the resource."
  type        = map(string)

  default = {
    "ENV"       = "Dev"
    "ManagedBy" = "Terraform"
  }
}
variable "resource_group_name" {
  description = "Prefix to be used for the resource group."
  type        = string
}
variable "rg_location" {
  description = "Resource group location."
  type        = string
  default     = "UK South"
}
variable "vnet_location" {
  description = "Location where the vnets are to be created."
  type        = string
  default     = "UK South"
}
variable "address_space" {
  description = "IP address space to be assigned to the vnet."
  type        = string
  default     = "10.1.0.0/16"
}
variable "vnet_name" {
  description = "Name of the vnet"
  type        = string
  default     = "tfxnet"
}
variable "subnet_name" {
  description = "A list of subnet names to be assigned."
  type        = list(string)
  default     = ["snet01", "snet02", "snet03"]
}
variable "subnet_prefix" {
  description = "The address prefix to be used for the subnets."
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}
variable "use_for_each" {
  description = "Use `for_each` instead of `count` to create multiple resources."
  type        = bool
  default     = true
}