---
applyTo: "pipelines/**"
---

# Pipeline Instructions

Read [`docs/pipeline.md`](../../docs/pipeline.md) before creating or modifying pipelines.

- `pipelines/nonprod/` handles `terraform/nonprod/**`, `pipelines/prod/` handles `terraform/prod/**`
- Each pipeline calls `{YOUR_ORG}/pipeline-modules/.github/workflows/terraform-deploy.yml@main`
- Adding a new stack requires a new job in the matching env pipeline file
- Plan runs on PRs, apply only on `main`; prod apply requires GitHub Environment approval
