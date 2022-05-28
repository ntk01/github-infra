terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.token
}

resource "github_repository" "github-infra" {
  name = "github-infra"
  description = "github infra by terraform"
  visibility = "public"
}
