variable "prefix" {
  type    = string
  default = "epam"
}

variable "env" {
  type    = string
  default = "pd"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "tags" {
  type = map(string)
  default = {
    CreatedBy   = "andrii_bushmanov@epam.com"
    Application = "Smart"
    Environment = "prod"
  }
}

variable "managed_identities" {
  type = map(object({
    name                = string
    resource_group_name = string
  }))
  default = {}
}
