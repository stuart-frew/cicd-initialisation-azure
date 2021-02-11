module "repositories" {
  source = "./initialisation"

  for_each = var.repositories

  repository_name = each.key
  repository_description = each.value.description
  repository_template = each.value.repository_template
  project_name = var.project_name
  github_service_connection_id = var.github_service_connection_id
  github_organisation = var.github_organisation

}