output "managed_identities" {
  value = {
    for k, v in module.managed_identity : k => {
      id           = v.id
      principal_id = v.principal_id
      client_id    = v.client_id
    }
  }
}
