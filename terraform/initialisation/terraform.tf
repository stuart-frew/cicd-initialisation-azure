terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.2"
    }
    github = {
      source = "integrations/github"
      version = "~> 4.4.0"
    }
  }
  required_version = ">= 0.13"
}
