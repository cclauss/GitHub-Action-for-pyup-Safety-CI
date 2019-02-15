workflow "on push" {
  on = "push"
  resolves = ["GitHub Action for pyup Safety"]
}

action "GitHub Action for pyup Safety" {
  uses = "cclauss/GitHub-Action-for-pyup-Safety-CI@master"
  args = "safety check --full-report"
}
