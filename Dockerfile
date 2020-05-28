FROM alpine:3.11

ARG TERRAFORM_VERSION=0.12.3

# Download and unpack terraform
RUN wget -O /tmp/tf.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
        unzip /tmp/tf.zip -d /usr/bin && \
        rm /tmp/tf.zip

ENTRYPOINT [ "terraform" ]
