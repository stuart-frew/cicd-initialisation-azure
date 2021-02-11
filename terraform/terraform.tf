terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.2"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.46.0"
    }
    github = {
      source = "hashicorp/github"
      version = "~> 4.1.0"
    }
  }
  required_version = ">= 0.13"
}
