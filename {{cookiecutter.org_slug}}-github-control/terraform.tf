terraform {
  backend "s3" {
    bucket = "{{ cookiecutter.org_slug }}-github-state"
    key    = "github.state"
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
