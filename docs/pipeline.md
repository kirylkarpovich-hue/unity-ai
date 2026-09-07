# Pipelines

Module README: [`pipeline-modules/terraform/README.md`](../../../pipeline-modules/terraform/README.md)

Files: `pipelines/{nonprod|prod}/terraform-deploy.yml` — each calls the module per stack.  
Add a stack: add a job in the matching env pipeline file.  
Secrets needed: `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_SUBSCRIPTION_ID`, `ARM_TENANT_ID`  
Replace `{YOUR_ORG}` with your GitHub org name.
