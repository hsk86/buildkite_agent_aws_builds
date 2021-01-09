# Buildkite Agent with AWS Builds

This docker image builds on the existing [Buildkite agent docker image](https://hub.docker.com/r/buildkite/agent/dockerfile) and pre-bakes in:

- CDK (Typescript + Python) and its dependencies
- Python + boto3
- Node + AWS-SDK

## Running this locally
Run `start-docker.sh` on your local machine. Ensure you have working AWS credentials file on ${HOME}/.aws/credentials so that the image can authenticate to AWS.

## Running it in AWS (e.g. EC2)
Same as above, but highly recommended that you remove the credentials in favour of using IAM roles attached to the instance.

## Testing
A simple pipeline in buildkite in included to test each installation included in the `.buildkite` folder