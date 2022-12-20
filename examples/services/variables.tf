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