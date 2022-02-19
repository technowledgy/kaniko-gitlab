# kaniko-gitlab

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/technowledgy/kaniko-gitlab/Push%20to%20main)
![GitHub](https://img.shields.io/github/license/technowledgy/kaniko-gitlab)

Slightly modified kaniko executor docker image to run in GitLab CI. The image contains a helper script `gitlab`, which adds a config file to connect to the GitLab-provided container registry as described in the [GitLab docs](https://docs.gitlab.com/ee/ci/docker/using_kaniko.html).

## How to use

```
# .gitlab-ci.yml
build:
  stage: build
  image:
    name: technowledgy/kaniko-gitlab
  script:
  - gitlab
  - /kaniko/executor --context "${CI_PROJECT_DIR}" -f Dockerfile -d "${CI_REGISTRY_NAME}:${CI_COMMIT_TAG}"
  rules:
  - if: $CI_COMMIT_TAG
