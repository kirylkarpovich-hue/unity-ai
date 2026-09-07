---
applyTo: "terraform/**/resource-group/**"
---

# Resource Group Instructions

Read [`docs/resource-group.md`](../../docs/resource-group.md) before creating or modifying resource groups.

- Edit `terraform.tfvars` only — never create new `.tf` files
- Add entries to the `resource_groups` map
- Default env: `nonprod` (`np`) unless specified
