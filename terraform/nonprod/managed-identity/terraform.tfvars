prefix   = "epam"
env      = "np"
location = "westeurope"
tags = {
  CreatedBy   = "andrii_bushmanov@epam.com"
  Application = "Smart"
  Environment = "nonprod"
}

managed_identities = {
  smart = {
    name                = "smart"
    resource_group_name = "epamnprgsmart"
  }
}
