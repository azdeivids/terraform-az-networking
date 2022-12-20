variable "rg_prefix" {
  description = "Prefix to be used for the resource group."
  type        = string
  default     = "tfaznet"
}
variable "location" {
  description = "Location where the resources are to be stored"
  type        = string
  default     = "UK South"
}
variable "app_name" {
  description = "name of the app to be used for the project"
  type        = string
  default     = "tfnetx"
}
variable "address_space_01" {
  description = "Address space for the vnet."
  type        = string
  default     = "10.1.0.0/16"
}
variable "snet_address_01" {
  description = "Address space for subnet 01"
  type        = string
  default     = "10.1.1.0/24"
}
variable "snet_address_02" {
  description = "Address space for subnet 02"
  type        = string
  default     = "10.1.2.0/24"
}