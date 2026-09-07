---
applyTo: "terraform/**"
---

# Skill: Terraform Validate & Format

Use this skill whenever you need to validate or format Terraform configurations in this project.

## terraform fmt

Recursively formats all `.tf` files to canonical HCL style.

```bash
# Format all stacks
terraform fmt -recursive terraform/

# Format a single stack
terraform fmt terraform/nonprod/resource-group/
terraform fmt terraform/prod/resource-group/
terraform fmt terraform/nonprod/managed-identity/
terraform fmt terraform/prod/managed-identity/
```

- Run **before** every commit that touches `.tf` or `.tfvars` files
- Use `-check` flag to verify without modifying (useful in CI):
  ```bash
  terraform fmt -check -recursive terraform/
  ```

## terraform validate

Validates configuration syntax and internal consistency. Must be run from the stack directory (where `providers.tf` lives).

```bash
# Validate a single stack (run from within the stack directory)
cd terraform/nonprod/resource-group && terraform validate
cd terraform/nonprod/managed-identity && terraform validate
cd terraform/prod/resource-group     && terraform validate
cd terraform/prod/managed-identity   && terraform validate
```

- Requires `terraform init` to have been run first in that directory
- If `init` has not been run, run it first:
  ```bash
  terraform init -backend=false   # skip remote backend for local validation
  ```

## Typical pre-commit workflow

```bash
# 1. Format
terraform fmt -recursive terraform/

# 2. Validate each changed stack (example: nonprod resource-group)
cd terraform/nonprod/resource-group
terraform init -backend=false
terraform validate
cd -
```

## Stacks in this project

| Stack | Path |
|---|---|
| nonprod / resource-group | `terraform/nonprod/resource-group/` |
| nonprod / managed-identity | `terraform/nonprod/managed-identity/` |
| prod / resource-group | `terraform/prod/resource-group/` |
| prod / managed-identity | `terraform/prod/managed-identity/` |
