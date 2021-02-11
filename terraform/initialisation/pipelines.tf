
resource "github_repository" "repository" {
  name        = var.repository_name
  description = var.repository_description

  visibility   = var.visibility

  template {
    owner = var.github_organisation
    repository = var.repository_template
  }
}

resource "github_branch_protection" "branch_protection" {
  repository_id = github_repository.repository.name

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    strict   = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
  }
}

resource "azuredevops_build_definition" "pipeline" {
  project_id = var.project_name
  name       = var.repository_name
  path       = "${var.repository_name}\\Build ${var.repository_name}"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type               = "GitHub"
    service_connection_id   = var.github_service_connection_id
    repo_id                 = "${var.github_organisation}/${var.repository_name}"
    branch_name             = "main"
    yml_path                = "azure-pipelines.yml"
  }
}

