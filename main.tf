terraform {
  required_providers {
    deno = {
      source = "denoland/deno"
    }
  }
}

provider "deno" {
  token = var.deno_deploy_api_token
  organization_id = var.deno_organization_id
}

resource "deno_project" "wilsonshn" {
  name = var.deno_project_name
}

data "deno_assets" "wilsonshn_assets" {
  path    = "../"
  pattern = "app/**/*.ts"
}

resource "deno_deployment" "app_deployment" {
  project_id      = deno_project.wilsonshn.id
  entry_point_url = "app/index.ts"
  assets          = data.deno_assets.wilsonshn_assets.output
  env_vars = {}
}