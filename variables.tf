variable "prefix" {
  type = string
}
variable "suffix" {
  type = string
}

variable "location" {
  type = string
}

variable "owner" {
  type    = string
  description = "Owner which will be added as a tag to the resource group."
}


variable "admin_username" {
  type        = string
  description = "Administrator user name for virtual machine"
}

variable "admin_password" {
  type        = string
  description = "Password must meet Azure complexity requirements"
}