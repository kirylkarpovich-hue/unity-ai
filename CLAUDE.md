# Claude Instructions — unity-ai

## Flow for any Azure resource request

1. Identify resource type from the request
2. Load the matching instruction file (see table below) — it will redirect you to the right doc
3. Read the doc in `docs/` — it links to the module README with full details
4. Edit `terraform.tfvars` only, never create new `.tf` files

## Instruction files

| Resource | Instruction file | Triggers on |
|---|---|---|
| Resource Group | `.codemie/instructions/resource-group.instructions.md` | `terraform/**/resource-group/**` |
| Managed Identity | `.codemie/instructions/managed-identity.instructions.md` | `terraform/**/managed-identity/**` |
| Pipeline (nonprod) | `.codemie/instructions/pipeline.instructions.md` | `pipelines/nonprod/**` |
| Pipeline (prod) | `.codemie/instructions/pipeline.instructions.md` | `pipelines/prod/**` |

## Pipeline modules

Reusable pipeline logic lives in `../../pipeline-modules/` (sibling of `unity-ai`).  
Read `pipeline-modules/terraform/README.md` before modifying pipelines.  
The caller (`pipelines/terraform-deploy.yml`) adds one job per stack — never modify the module directly.

## Guardrails

See `.codemie/guardrails.md` — applies to all files. Key rules:
- Never push to `main`/`master` directly; never `git push --force`
- Never delete `.tf`/`.tfvars`/`.yml` files or run `rm -rf` without confirmation
- Never run `terraform destroy` or `terraform apply` (prod) without confirmation

## Skills

| Skill | File | Use when |
|---|---|---|
| Terraform validate & format | `.codemie/skills/terraform.md` | Before any commit touching `.tf`/`.tfvars` files |

## Global rules

- Env codes: `np` = nonprod, `pd` = prod — default to **nonprod** if not specified
- Naming: `{prefix}{env}{rg|id}{name}`
- All resources managed via `for_each` maps in `terraform.tfvars`
