
provider "azuredevops" {
  org_service_url       = var.devops_url
  personal_access_token = var.devops_personal_access_token
}
