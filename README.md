# Dhall Buildkite Plugin

Put this into the buildkite steps as the meta step, it will read `.buildkite/pipelin.dahll` and upload steps

[.buildkite/pipelin.dahll](.buildkite/pipelin.dahll) is a dhall example for buildkite steps

```yaml
steps:
  - label: ':pipeline:'
    command: 'dhall-to-yaml < .buildkite/pipeline.dhall | buildkite-agent pipeline upload'
    plugins:
      - jcouyang/dhall#1.0:
          os: 'linux'
```
