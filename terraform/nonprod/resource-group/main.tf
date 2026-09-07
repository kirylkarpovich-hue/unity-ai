module "resource_group" {
  for_each = var.resource_groups
  source   = "../../../terraform-modules/terraform-azurerm-resource-group"

  prefix   = var.prefix
  env      = var.env
  name     = each.value.name
  location = var.location
  tags     = var.tags
}
