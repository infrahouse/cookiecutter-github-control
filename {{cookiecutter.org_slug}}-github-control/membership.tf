resource "github_membership" "{{ cookiecutter.org_slug }}" {
  for_each = toset(var.developers)
  username = each.key
}
