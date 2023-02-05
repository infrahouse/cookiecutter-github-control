# Cookiecutter GitHub Control

[Cookiecutter](https://github.com/cookiecutter/cookiecutter) template for a Terraform live repository managing 
a GitHub organization.  

## Features

* Create a Terraform live repository.
* Configure Continuous Integration and Deployment (CI/CD) using GitHub Actions.
* Create a documentation template with [Sphinx](https://www.sphinx-doc.org/en/master/) and [ReadTheDocs](https://readthedocs.org/) configuration.

## Quick Start

Install the latest Cookiecutter if you haven't installed it yet (this requires Cookiecutter 1.4.0 or higher):
```shell
pip install "cookiecutter~=2.1"
```

Generate a GitHub Control repository
```shell
cookiecutter https://github.com/infrahouse/cookiecutter-github-control.git
```

Publish the generated repository to GitHub. `my-org` is an organization name from the previous step. 
```shell
cd my-org-github-control
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/my-org/my-org-github-control.git
git push -u origin main
```

Enter AWS and GitHub secrets in `https://github.com/<my-gh-user>/<my-org>-github-control/settings/secrets/actions`:

* `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_DEFAULT_REGION`
* `GH_TOKEN`

`my-gh-user` is a GitHub user that hosts the repository. I recommend using a separate dedicated user to manage
your GitHub organization.
