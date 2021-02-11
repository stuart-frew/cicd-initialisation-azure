variable "project_name" {
  description = "The name of the project to create the build pipeline in"
}
variable "github_service_connection_id" {
  description = "The UUID of the GitHub service connection"
}
variable "repository_description" {
  description = "The short description to be used when creating the repository"
}
variable "repository_name" {
  description = "The name of the new repository, do not include the organisation"
}
variable "visibility" {
  description = "The visibility of the repository being created"
  default = "public"
}
variable "github_organisation" {
  description = "The organisation in which the new repository will be created"
}
variable "repository_template" {
  description = "The template repository that the new repository will be created from, assumes that the template is in the same organisation that the new repository will be."
}