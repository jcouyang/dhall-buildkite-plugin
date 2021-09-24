# Dhall Buildkite Plugin

[![Build status](https://badge.buildkite.com/5178e1b291f93933bc2dd28a1451277e231144dfb73b2b1d71.svg)](https://buildkite.com/jcouyang/dhall-buildkite-plugin)

Put this into the buildkite steps as the meta step, it will read `.buildkite/pipelin.dahll` and upload steps

[.buildkite/pipelin.dahll](https://github.com/jcouyang/dhall-buildkite-plugin/blob/master/.buildkite/pipeline.dhall) is a dhall example for buildkite steps

```yaml
steps:
  - label: ':pipeline:'
    command: 'dhall-to-yaml <<< "./.buildkite/pipeline.dhall" | buildkite-agent pipeline upload'
    plugins:
      - jcouyang/dhall#1.0:
          os: 'linux'
```
