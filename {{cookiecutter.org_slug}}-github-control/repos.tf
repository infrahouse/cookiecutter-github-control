resource "github_repository" "sample-repo" {
  name        = "sample-repo"
  description = "Repository example"

  visibility = "public"
}

resource "github_team_repository" "dev" {
  repository = github_repository.sample-repo.name
  team_id    = github_team.dev.id
  permission = "push"
}
