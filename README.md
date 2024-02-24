# Wilson's HN feed infrastructure
Terraform configuration for deployment of my Wilson's HN feed. It is suggested to update the `tfvars.example` file with your own values and remove the `.example` extension before running `plan` or `apply`.

This repository will add/update a deno project within [Deno Deploy](https://dash.deno.com), a serverless hosting platform that uses the deno runtime.

## Running this repo
|Command|Description|
|-------|-----------|
|`terraform init`|initializes the terraform project within the directory (required to run before any other command)
|`terraform plan`|outputs a preview of the infrastructure changes
|`terraform apply`|creates all required resources after accepting the plan preview output

## Resources in this repo
- Deno Deployment
- Deno Project