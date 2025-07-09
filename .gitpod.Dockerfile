FROM gitpod/workspace-full

# Install Docker
USER root
RUN apt-get update && apt-get install -y docker.io

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -sL https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && mv kubectl /usr/local/bin/

# Install kind
RUN curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64 && \
    chmod +x ./kind && mv ./kind /usr/local/bin/kind
