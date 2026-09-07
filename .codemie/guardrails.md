---
applyTo: "**"
---

# Guardrails

## Branch protection

- **Never** push directly to `main` or `master` — always use a feature branch
- **Never** use `git push --force` or `git push -f`
- **Never** run `git reset --hard` without explicit user confirmation
- **Never** delete a remote branch without explicit user confirmation
- **Never** merge into `main`/`master` locally — use pull requests only

## File protection

- **Never** delete `.tf`, `.tfvars`, `.yml`, or `.yaml` files without explicit user confirmation
- **Never** run `rm -rf` on any directory
- **Never** overwrite `terraform.tfstate` or `terraform.tfstate.backup`
- **Never** create new `.tf` files — edit `terraform.tfvars` only (see CLAUDE.md)

## Terraform safety

- **Never** run `terraform destroy` without explicit user confirmation
- **Never** run `terraform apply` without first showing the plan and getting approval
- **Never** run `terraform apply` against `prod` without explicit user confirmation
- Always run `terraform validate` and `terraform fmt` before any apply

## Confirmation required for

- Any destructive git operation (`reset`, `clean`, `branch -D`)
- Any `terraform destroy` or `terraform apply` in `prod`
- Deleting or renaming files tracked by git
