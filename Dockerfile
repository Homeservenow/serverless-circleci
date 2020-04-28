FROM circleci/node:12

LABEL maintainer="Alex Hayton <alex.hayton@homeserve.com>"

WORKDIR /home/circleci

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  sudo ./aws/install && \
  rm -rf aws

# Install ECS CLI
RUN sudo curl -o "/usr/local/bin/ecs-cli" https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-linux-amd64-latest && \
    sudo chmod +x /usr/local/bin/ecs-cli

# Install serverless CLI
RUN yarn global add serverless && yarn cache clean

ENV PATH=$PATH:/home/circleci/.yarn/bin

# Version / PATH Checks
RUN echo "AWS CLI: $(aws --version)" && \
    echo "ECS CLI: $(ecs-cli --version)" && \
    echo "nodejs: $(node --version)" && \
    echo "npm: $(npm --version)" && \
    echo "yarn: $(yarn --version)" && \
    echo "serverless: $(serverless --version)"

ENTRYPOINT [ "serverless" ]
