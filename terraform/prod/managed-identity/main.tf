module "managed_identity" {
  for_each = var.managed_identities
  source   = "../../../terraform-modules/terraform-azurerm-managed-identity"

  prefix              = var.prefix
  env                 = var.env
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = var.location
  tags                = var.tags
}
