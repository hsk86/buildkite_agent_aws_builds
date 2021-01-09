[![Build status](https://badge.buildkite.com/5b2aebe62e130dfb0980cf73c9f179b850833b1637988a8512.svg)](https://buildkite.com/hsk-corp/buildkite-agent-aws-builds)

# Buildkite Agent with AWS Builds

This docker image builds on the existing [Buildkite agent docker image](https://hub.docker.com/r/buildkite/agent/dockerfile) and pre-bakes in:

- Python
- Node
- AWS CLI

Others to be added as personally needed :)

## Running this locally
Run `start-docker.sh` on your local machine. Ensure you have working AWS credentials file on `${HOME}/.aws/credentials` so that the image can authenticate to AWS.  

Remember to set `MY_BUILDKITE_TOKEN` environment variable with whatever Buildkite supplies you with!

## Recommendation for running in AWS (e.g. in an EC2 instance)
Remove the credentials bit from `start-docker.sh` (`-v ${HOME}/.aws/credentials:/root/.aws/credentials:ro`) in favour of using IAM roles attached to the instance.

## Testing
A simple pipeline in buildkite in included to test each installation included in the `.buildkite` folder