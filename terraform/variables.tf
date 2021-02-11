#
# Devops authentication
#
variable "devops_url" {
  type = string
  description = "The URL to the Azure DevOps organisation"
}
variable "devops_personal_access_token" {
  type = string
  description = "The security token for accessing the DevOps project"
}

# Initialisation defaults
variable "project_name" {
  type = string
  description = "The name of the DevOps project that the pipelines will be created in"
}

variable "github_service_connection_id" {
  type = string
  description = "The UUID of the service connection that authorises to GitHub`"
}
variable "github_organisation" {
  type = string
  description = "The GitHub organisation that the template and new repository will be in"
}

variable "github_personal_access_token" {
  type = string
  description = "The GitHub token to authenticate against GitHub"
}

# The repository definitions
variable "repositories" {
  default = {
    "logicApp-strawman" = {
      description = "A simple logic app demo"
      repository_template = "basic-template"
    }
  }
}