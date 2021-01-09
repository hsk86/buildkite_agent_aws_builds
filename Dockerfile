FROM buildkite/agent:3.26.0-ubuntu

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -

RUN apt-get install -y nodejs python3 python3-distutils zip

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    ./aws/install

# Install pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py &&\
    python3 get-pip.py