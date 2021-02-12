# CICD Initialisation for Azure
Terraform files to initialise a CI/CD pipeline in an Azure DevOps project.

## Prerequisites
It is expected that the boot strap process has already been run.
See the [example repository](https://github.com/stuart-frew/cicd-bootstrap-azure)

## Purpose
This repo has the Terraform scripts for setting up repositories and Azure pipelines.
The definitions for the repositories are stored in the file `terraform/variables.tf` in the `repository` variable.
```terraform
# The repository definitions
variable "repositories" {
  default = {
    "repository-strawman" = {
      description = "A empty repo to demo repository creation"
      repository_template = "template-empty"
      pipelines = {
        build = "azure-pipelines.yml"
        build2 = "azure-pipelines2.yml"
      }
    }
  }
}
```
Where the structure is 
```terraform
variable "repositories" {
  default = {
    "The Name of the GitHub Repository to create" = {
      description = "The short description for the GitHub repository"
      repository_template = "the name of the template that will be used to create the new repository"
      pipelines = {
        "name of pipeline to create"= "path/to/pipeline.yml"
        build2 = "azure-pipelines2.yml"
      }
    }
  }
}
```
