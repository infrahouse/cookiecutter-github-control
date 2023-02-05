resource "github_organization_settings" "{{ cookiecutter.org_slug }}" {
  billing_email                                                = "{{ cookiecutter.email }}"
  company                                                      = "{{ cookiecutter.org_name }}"
  blog                                                         = "{{ cookiecutter.website }}"
  email                                                        = "{{ cookiecutter.email }}"
  location                                                     = "San Francisco, California"
  name                                                         = "{{ cookiecutter.org_name }}"
  description                                                  = "{{ cookiecutter.org_description }}"
  has_organization_projects                                    = true
  has_repository_projects                                      = true
  default_repository_permission                                = "read"
  members_can_create_repositories                              = true
  members_can_create_public_repositories                       = true
  members_can_create_private_repositories                      = true
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = true
  members_can_create_public_pages                              = true
  members_can_create_private_pages                             = true
  members_can_fork_private_repositories                        = true
  web_commit_signoff_required                                  = true
  advanced_security_enabled_for_new_repositories               = false
  dependabot_alerts_enabled_for_new_repositories               = false
  dependabot_security_updates_enabled_for_new_repositories     = false
  dependency_graph_enabled_for_new_repositories                = false
  secret_scanning_enabled_for_new_repositories                 = false
  secret_scanning_push_protection_enabled_for_new_repositories = false
}
