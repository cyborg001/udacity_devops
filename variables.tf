variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "East US"
}
variable "username"{
  description = "the username to enter to the system."
  default = "cgrs27"
}
variable "password" {
  description = "the pasword for the username."
  default = "Carlos1978@_1"
}