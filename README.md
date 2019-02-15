# GitHub Action for running pyup Safety CI commands

Each time that new code is pushed into your repo, you can have a [safety](https://docs.pylint.org) command automatically run.

Example workflow:
* Put the following text into a file named `.github/main.workflow` in your repo):
```hcl
workflow "on push" {
  on = "push"
  resolves = ["GitHub Action for pyup Safety"]
}

action "GitHub Action for pyup Safety" {
  uses = "cclauss/GitHub-Action-for-pyup-Safety-CI@master"
  args = "safety check --full-report"
}
```
Or to add other safety options to __args =__ above.
* https://pypi.org/project/safety
