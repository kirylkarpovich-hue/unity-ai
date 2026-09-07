---
applyTo: "terraform/**/managed-identity/**"
---

# Managed Identity Instructions

Read [`docs/managed-identity.md`](../../docs/managed-identity.md) before creating or modifying managed identities.

- Edit `terraform.tfvars` only — never create new `.tf` files
- Add entries to the `managed_identities` map
- `resource_group_name` must reference an existing resource group
- Default env: `nonprod` (`np`) unless specified
