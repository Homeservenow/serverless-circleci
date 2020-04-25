FROM circleci/node:12

LABEL maintainer="Alex Hayton <alex.hayton@gmail.com"

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  sudo ./aws/install && \
  rm -rf aws

# Install serverless cli
RUN yarn global add serverless

# Version Check
RUN aws --version && \
    ecs-cli --version && \
    node --version && \
    npm --version && \
    yarn --version

ENTRYPOINT [ "serverless" ]
