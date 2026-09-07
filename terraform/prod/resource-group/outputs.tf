output "resource_groups" {
  value = {
    for k, v in module.resource_group : k => {
      id   = v.id
      name = v.name
    }
  }
}
