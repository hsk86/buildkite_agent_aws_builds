#!/bin/bash
set -eufo pipefail

# Build docker
sudo docker build -t buildkite-agent-aws-build .

# Run docker with buildkite-provided token and your local aws credentials.
# If running EC2, consider using IAM credentials instead.
sudo docker run -i \
-e BUILDKITE_AGENT_TOKEN=$MY_BUILDKITE_TOKEN \
-v ${HOME}/.aws/credentials:/root/.aws/credentials:ro \
buildkite-agent-aws-build 