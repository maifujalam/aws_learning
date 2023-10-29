variable "region" {
  description = "Region"
}
variable "role_name" {
  description = "Username to create"
  default = "default-user"
}

variable "group_name" {
  description = "Name of the group in which to assign user"
  default = "developer-admin"
}
