prefix   = "epam"
env      = "pd"
location = "westeurope"
tags = {
  CreatedBy   = "andrii_bushmanov@epam.com"
  Application = "Smart"
  Environment = "prod"
}

managed_identities = {
  smart = {
    name                = "smart"
    resource_group_name = "epampdrgsmart"
  }
}
