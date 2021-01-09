FROM buildkite/agent:3.26.0-ubuntu

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -

RUN apt-get install -y nodejs python3.8 zip

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    ./aws/install